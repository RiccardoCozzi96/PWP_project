
; instance 13x13

; define the shapes of the paper roll
(define-fun max_width () Int 13)
(define-fun max_height () Int 13)

; define the default shapes of the pieces of paper
(define-fun p1_w_default () Int 3)
(define-fun p1_h_default () Int 3)
(define-fun p2_w_default () Int 3)
(define-fun p2_h_default () Int 4)
(define-fun p3_w_default () Int 3)
(define-fun p3_h_default () Int 5)
(define-fun p4_w_default () Int 3)
(define-fun p4_h_default () Int 6)
(define-fun p5_w_default () Int 3)
(define-fun p5_h_default () Int 7)
(define-fun p6_w_default () Int 3)
(define-fun p6_h_default () Int 8)
(define-fun p7_w_default () Int 4)
(define-fun p7_h_default () Int 3)
(define-fun p8_w_default () Int 4)
(define-fun p8_h_default () Int 4)
(define-fun p9_w_default () Int 7)
(define-fun p9_h_default () Int 6)


; define the shapes of the pieces of paper (depending on the rotations)
(declare-const p1_w Int)
(declare-const p1_h Int)
(declare-const p2_w Int)
(declare-const p2_h Int)
(declare-const p3_w Int)
(declare-const p3_h Int)
(declare-const p4_w Int)
(declare-const p4_h Int)
(declare-const p5_w Int)
(declare-const p5_h Int)
(declare-const p6_w Int)
(declare-const p6_h Int)
(declare-const p7_w Int)
(declare-const p7_h Int)
(declare-const p8_w Int)
(declare-const p8_h Int)
(declare-const p9_w Int)
(declare-const p9_h Int)


; FIND: orientation of a pieces
(assert (or (and (= p1_w p1_w_default) (= p1_h p1_h_default))                                         (and (= p1_w p1_h_default) (= p1_h p1_w_default)) ))

(assert (or (and (= p2_w p2_w_default) (= p2_h p2_h_default))                                         (and (= p2_w p2_h_default) (= p2_h p2_w_default)) ))

(assert (or (and (= p3_w p3_w_default) (= p3_h p3_h_default))                                         (and (= p3_w p3_h_default) (= p3_h p3_w_default)) ))

(assert (or (and (= p4_w p4_w_default) (= p4_h p4_h_default))                                         (and (= p4_w p4_h_default) (= p4_h p4_w_default)) ))

(assert (or (and (= p5_w p5_w_default) (= p5_h p5_h_default))                                         (and (= p5_w p5_h_default) (= p5_h p5_w_default)) ))

(assert (or (and (= p6_w p6_w_default) (= p6_h p6_h_default))                                         (and (= p6_w p6_h_default) (= p6_h p6_w_default)) ))

(assert (or (and (= p7_w p7_w_default) (= p7_h p7_h_default))                                         (and (= p7_w p7_h_default) (= p7_h p7_w_default)) ))

(assert (or (and (= p8_w p8_w_default) (= p8_h p8_h_default))                                         (and (= p8_w p8_h_default) (= p8_h p8_w_default)) ))

(assert (or (and (= p9_w p9_w_default) (= p9_h p9_h_default))                                         (and (= p9_w p9_h_default) (= p9_h p9_w_default)) ))



; FIND: origins of the pieces of paper
(declare-const p1_x Int)
(declare-const p1_y Int)
(declare-const p2_x Int)
(declare-const p2_y Int)
(declare-const p3_x Int)
(declare-const p3_y Int)
(declare-const p4_x Int)
(declare-const p4_y Int)
(declare-const p5_x Int)
(declare-const p5_y Int)
(declare-const p6_x Int)
(declare-const p6_y Int)
(declare-const p7_x Int)
(declare-const p7_y Int)
(declare-const p8_x Int)
(declare-const p8_y Int)
(declare-const p9_x Int)
(declare-const p9_y Int)



; ; ; ; ; FUNCTIONS ; ; ; ; ; ;

; 1) the piece has to be placed so not to exceed the size of the paper roll. Plus, origins have to be positive
(define-fun exceeds ((x Int) (y Int) (width Int) (height Int)) Bool
  (or 
    (> (+ x width) max_width)
    (> (+ y height) max_height)
    (< x 0)
    (< y 0)
  )
)

; 2) a piece A overlap with B
(define-fun overlap ( (ax Int) (ay Int) (aw Int) (ah Int)
                      (bx Int) (by Int) (bw Int) (bh Int)) Bool
  (or
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically    : by <= ay < (by + bh)
    )
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))   ; ends inside vertically      : by < (ay + ah) <= (by + bh)
    )
    (and 
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically    : by <= ay < (by + bh)
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))   ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
    )
    (and 
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))   ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))   ; ends inside vertically      : by < (ay + ah) <= (by + bh)
    )
    (and 
      (and (<= bx ax) (< ax (+ bx bw)))                 ; starts inside horizontally  : bx <= ax < (bx + bw)
      (and (< bx (+ ax aw)) (<= (+ ax aw) (+ bx bw)))   ; ends inside horizontally    : bx < (ax + aw) <= (bx + bw)
      (and (<= ay by) (>= (+ ay ah) (+ by bh)))         ; vertically starts outside, ends outside   : (by <= ay) and ((ay + ah) >= (by + bh))
    )
    (and 
      (and (<= by ay) (< ay (+ by bh)))                 ; starts inside vertically  : bx <= ax < (bx + bw)
      (and (< by (+ ay ah)) (<= (+ ay ah) (+ by bh)))   ; ends inside vertically    : bx < (ax + aw) <= (bx + bw)
      (and (<= ax bx) (>= (+ ax aw) (+ bx bw)))         ; horizontally starts before, ends after   : (by <= ay) and ((ay + ah) >= (by + bh))
    )
  )
)


; ; ; ; ; ASSERTIONS ; ; ; ; ;

; not exceed constraints
(assert (not (exceeds p1_x p1_y p1_w p1_h))) ;p1 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p2_x p2_y p2_w p2_h))) ;p2 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p3_x p3_y p3_w p3_h))) ;p3 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p4_x p4_y p4_w p4_h))) ;p4 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p5_x p5_y p5_w p5_h))) ;p5 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p6_x p6_y p6_w p6_h))) ;p6 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p7_x p7_y p7_w p7_h))) ;p7 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p8_x p8_y p8_w p8_h))) ;p8 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p9_x p9_y p9_w p9_h))) ;p9 coordinates do not exceed the sheet dimensions


; not overlap constraints
(assert (not (overlap p2_x p2_y p2_w p2_h p1_x p1_y p1_w p1_h))) 	;p2 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p2_x p2_y p2_w p2_h))) 	;p1 with p2

(assert (not (overlap p3_x p3_y p3_w p3_h p1_x p1_y p1_w p1_h))) 	;p3 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p3_x p3_y p3_w p3_h))) 	;p1 with p3

(assert (not (overlap p4_x p4_y p4_w p4_h p1_x p1_y p1_w p1_h))) 	;p4 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p4_x p4_y p4_w p4_h))) 	;p1 with p4

(assert (not (overlap p5_x p5_y p5_w p5_h p1_x p1_y p1_w p1_h))) 	;p5 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p5_x p5_y p5_w p5_h))) 	;p1 with p5

(assert (not (overlap p6_x p6_y p6_w p6_h p1_x p1_y p1_w p1_h))) 	;p6 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p6_x p6_y p6_w p6_h))) 	;p1 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p1_x p1_y p1_w p1_h))) 	;p7 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p7_x p7_y p7_w p7_h))) 	;p1 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p1_x p1_y p1_w p1_h))) 	;p8 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p8_x p8_y p8_w p8_h))) 	;p1 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p1_x p1_y p1_w p1_h))) 	;p9 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p9_x p9_y p9_w p9_h))) 	;p1 with p9

(assert (not (overlap p3_x p3_y p3_w p3_h p2_x p2_y p2_w p2_h))) 	;p3 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p3_x p3_y p3_w p3_h))) 	;p2 with p3

(assert (not (overlap p4_x p4_y p4_w p4_h p2_x p2_y p2_w p2_h))) 	;p4 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p4_x p4_y p4_w p4_h))) 	;p2 with p4

(assert (not (overlap p5_x p5_y p5_w p5_h p2_x p2_y p2_w p2_h))) 	;p5 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p5_x p5_y p5_w p5_h))) 	;p2 with p5

(assert (not (overlap p6_x p6_y p6_w p6_h p2_x p2_y p2_w p2_h))) 	;p6 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p6_x p6_y p6_w p6_h))) 	;p2 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p2_x p2_y p2_w p2_h))) 	;p7 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p7_x p7_y p7_w p7_h))) 	;p2 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p2_x p2_y p2_w p2_h))) 	;p8 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p8_x p8_y p8_w p8_h))) 	;p2 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p2_x p2_y p2_w p2_h))) 	;p9 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p9_x p9_y p9_w p9_h))) 	;p2 with p9

(assert (not (overlap p4_x p4_y p4_w p4_h p3_x p3_y p3_w p3_h))) 	;p4 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p4_x p4_y p4_w p4_h))) 	;p3 with p4

(assert (not (overlap p5_x p5_y p5_w p5_h p3_x p3_y p3_w p3_h))) 	;p5 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p5_x p5_y p5_w p5_h))) 	;p3 with p5

(assert (not (overlap p6_x p6_y p6_w p6_h p3_x p3_y p3_w p3_h))) 	;p6 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p6_x p6_y p6_w p6_h))) 	;p3 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p3_x p3_y p3_w p3_h))) 	;p7 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p7_x p7_y p7_w p7_h))) 	;p3 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p3_x p3_y p3_w p3_h))) 	;p8 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p8_x p8_y p8_w p8_h))) 	;p3 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p3_x p3_y p3_w p3_h))) 	;p9 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p9_x p9_y p9_w p9_h))) 	;p3 with p9

(assert (not (overlap p5_x p5_y p5_w p5_h p4_x p4_y p4_w p4_h))) 	;p5 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p5_x p5_y p5_w p5_h))) 	;p4 with p5

(assert (not (overlap p6_x p6_y p6_w p6_h p4_x p4_y p4_w p4_h))) 	;p6 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p6_x p6_y p6_w p6_h))) 	;p4 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p4_x p4_y p4_w p4_h))) 	;p7 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p7_x p7_y p7_w p7_h))) 	;p4 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p4_x p4_y p4_w p4_h))) 	;p8 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p8_x p8_y p8_w p8_h))) 	;p4 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p4_x p4_y p4_w p4_h))) 	;p9 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p9_x p9_y p9_w p9_h))) 	;p4 with p9

(assert (not (overlap p6_x p6_y p6_w p6_h p5_x p5_y p5_w p5_h))) 	;p6 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p6_x p6_y p6_w p6_h))) 	;p5 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p5_x p5_y p5_w p5_h))) 	;p7 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p7_x p7_y p7_w p7_h))) 	;p5 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p5_x p5_y p5_w p5_h))) 	;p8 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p8_x p8_y p8_w p8_h))) 	;p5 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p5_x p5_y p5_w p5_h))) 	;p9 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p9_x p9_y p9_w p9_h))) 	;p5 with p9

(assert (not (overlap p7_x p7_y p7_w p7_h p6_x p6_y p6_w p6_h))) 	;p7 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p7_x p7_y p7_w p7_h))) 	;p6 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p6_x p6_y p6_w p6_h))) 	;p8 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p8_x p8_y p8_w p8_h))) 	;p6 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p6_x p6_y p6_w p6_h))) 	;p9 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p9_x p9_y p9_w p9_h))) 	;p6 with p9

(assert (not (overlap p8_x p8_y p8_w p8_h p7_x p7_y p7_w p7_h))) 	;p8 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p8_x p8_y p8_w p8_h))) 	;p7 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p7_x p7_y p7_w p7_h))) 	;p9 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p9_x p9_y p9_w p9_h))) 	;p7 with p9

(assert (not (overlap p9_x p9_y p9_w p9_h p8_x p8_y p8_w p8_h))) 	;p9 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p9_x p9_y p9_w p9_h))) 	;p8 with p9




; sat-checking
(check-sat)
(get-model)
