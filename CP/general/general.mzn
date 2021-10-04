% CP project (general TEMP)
% - Cozzi Riccardo
% - Liscio Alessandro
% % % % % % % % % % % % % %

include "globals.mzn";  % global constraints

% work variables
int: w;       % width of the paper
int: h;       % height of the paper
int: n;       % number of paper pieces
int: x = 1;   % x axis
int: y = 2;   % y axis

% data structures
set of int: INDICES = 1..n;                % indices of the pieces of paper
set of int: DIMS = 1..2;                   % each piece of paper is defined in 2 dimensions
array[INDICES, DIMS] of var int: origins;  % matrix Nx2 of origin points for the pieces
array[INDICES, DIMS] of int: shapes;       % matrix Nx2 of the shapes of the pieces

% % % % % % % PRELIMINARY CHECK ON AREA % % % % % % %

int: total_area = sum([shapes[i,x]*shapes[i,y] | i in INDICES]);
constraint total_area <= h*w;

% % % % % % % ROTATIONS CONSTRAINTS % % % % % % % % % 

% true if a piece can rotate (so if it is rectangular)
array[INDICES] of var bool: is_rectangular;
constraint forall(i in INDICES) (
      if (shapes[i, x] != shapes[i, y]) then is_rectangular[i]
      else is_rectangular[i] endif
      );

% true if the piece has been rotated
array[INDICES] of var bool: rotations;
constraint forall(i in INDICES) (rotations[i] -> is_rectangular[i]);

% invert pieces dimensions if they have been rotated 
array[INDICES, DIMS] of var int: rotated_shapes; 
constraint forall(i in INDICES) (
              if (not rotations[i]) then rotated_shapes[i, ..] == shapes[i, ..] 
              else rotated_shapes[i, x] = shapes[i, y] /\ rotated_shapes[i, y] = shapes[i, x] endif
              );
              
% origins domains fall in range [0,w] on axis x and in [0,h] on axis y
constraint forall(i in INDICES)
  ((rotated_shapes[i, x] > 0 /\ rotated_shapes[i, x] <= w) /\ (rotated_shapes[i, y] > 0 /\ rotated_shapes[i, y] <= h));

% % % % % % % % % %  BASE CONSTRAINTS  % % % % % % % % % % % % 

% origins domains fall in range [0,w] on axis x and in [0,h] on axis y
constraint forall(i in INDICES)
  ((origins[i, x] >= 0 /\ origins[i, x] < w) /\ (origins[i, y] >= 0 /\ origins[i, y] < h));

% each piece must fit in the paper roll
constraint forall(i in INDICES)
                  (((origins[i,x] + rotated_shapes[i,x]) <= w) /\ ((origins[i,y] + rotated_shapes[i,y]) <= h));
                  
% pieces of paper must not overlap each other
constraint diffn_k(origins, rotated_shapes);

% pieces of paper must not exceed the the paper roll shapes
constraint cumulative(origins[.., x], rotated_shapes[.., x], rotated_shapes[.., y], h);
constraint cumulative(origins[.., y], rotated_shapes[.., y], rotated_shapes[.., x], w);

% % % % % % % % % %  SEARCH  % % % % % % % % % % % % 

ann:search_ann;
search_ann = seq_search([bool_search(rotations, dom_w_deg, indomain_min),
                         int_search(origins, dom_w_deg, indomain_min)]);
ann:restart_ann;
restart_ann = restart_luby(1000);

solve :: search_ann
      :: restart_ann
satisfy;

% % % % % % % % % %  OUTPUTS  % % % % % % % % % % % % 

output ["\(w) \(h)\n\(n)"];
output ["\n\(rotated_shapes[i,x]) \(rotated_shapes[i,y])\t\(origins[i,x]) \(origins[i,y])" | i in INDICES];
