% CP project (base)
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
array[INDICES, 1..2] of var int: origins;  % matrix Nx2 of origin points for the pieces
array[INDICES, 1..2] of int: shapes;       % matrix Nx2 of the shapes of the pieces

% % % % % % % % % %  CONSTRAINTS  % % % % % % % % % % % % 

% origins domains fall in range [0,w] on axis x and in [0,h] on axis y
constraint forall(i in INDICES)
  ((origins[i, x] >= 0 /\ origins[i, x] < w) /\ (origins[i, y] >= 0 /\ origins[i, y] < h));

% each piece must fit in the paper roll
constraint forall(i in INDICES)
                  (((origins[i,x] + shapes[i,x]) <= w) /\ ((origins[i,y] + shapes[i,y]) <= h));
                  
% different pieces of paper must not overlap each other
constraint diffn_k(origins, shapes);

% pieces of paper must not exceed the the paper roll shapes
constraint cumulative(origins[.., x], shapes[.., x], shapes[.., y], h);
constraint cumulative(origins[.., y], shapes[.., y], shapes[.., x], w);

% % % % % % % % % %  SEARCH  % % % % % % % % % % % % 

ann:search_ann;
search_ann = int_search(origins, dom_w_deg, indomain_min)

ann:restart_ann;
restart_ann = restart_luby(1000);

solve :: search_ann
      :: restart_ann
      satisfy;

% % % % % % % % % %  OUTPUTS  % % % % % % % % % % % % 

output ["\(w) \(h)\n\(n)"];
output ["\n\(shapes[i,x]) \(shapes[i,y])\t\(origins[i,x]) \(origins[i,y])" | i in INDICES];
