
; instance 29x29

; define the shapes of the paper roll
(define-fun max_width () Int 29)
(define-fun max_height () Int 29)

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
(define-fun p7_w_default () Int 3)
(define-fun p7_h_default () Int 9)
(define-fun p8_w_default () Int 3)
(define-fun p8_h_default () Int 10)
(define-fun p9_w_default () Int 3)
(define-fun p9_h_default () Int 11)
(define-fun p10_w_default () Int 3)
(define-fun p10_h_default () Int 15)
(define-fun p11_w_default () Int 3)
(define-fun p11_h_default () Int 18)
(define-fun p12_w_default () Int 3)
(define-fun p12_h_default () Int 20)
(define-fun p13_w_default () Int 4)
(define-fun p13_h_default () Int 3)
(define-fun p14_w_default () Int 4)
(define-fun p14_h_default () Int 4)
(define-fun p15_w_default () Int 4)
(define-fun p15_h_default () Int 5)
(define-fun p16_w_default () Int 4)
(define-fun p16_h_default () Int 6)
(define-fun p17_w_default () Int 4)
(define-fun p17_h_default () Int 7)
(define-fun p18_w_default () Int 4)
(define-fun p18_h_default () Int 9)
(define-fun p19_w_default () Int 4)
(define-fun p19_h_default () Int 15)
(define-fun p20_w_default () Int 4)
(define-fun p20_h_default () Int 18)
(define-fun p21_w_default () Int 4)
(define-fun p21_h_default () Int 20)
(define-fun p22_w_default () Int 5)
(define-fun p22_h_default () Int 4)
(define-fun p23_w_default () Int 5)
(define-fun p23_h_default () Int 8)
(define-fun p24_w_default () Int 5)
(define-fun p24_h_default () Int 17)


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
(declare-const p10_w Int)
(declare-const p10_h Int)
(declare-const p11_w Int)
(declare-const p11_h Int)
(declare-const p12_w Int)
(declare-const p12_h Int)
(declare-const p13_w Int)
(declare-const p13_h Int)
(declare-const p14_w Int)
(declare-const p14_h Int)
(declare-const p15_w Int)
(declare-const p15_h Int)
(declare-const p16_w Int)
(declare-const p16_h Int)
(declare-const p17_w Int)
(declare-const p17_h Int)
(declare-const p18_w Int)
(declare-const p18_h Int)
(declare-const p19_w Int)
(declare-const p19_h Int)
(declare-const p20_w Int)
(declare-const p20_h Int)
(declare-const p21_w Int)
(declare-const p21_h Int)
(declare-const p22_w Int)
(declare-const p22_h Int)
(declare-const p23_w Int)
(declare-const p23_h Int)
(declare-const p24_w Int)
(declare-const p24_h Int)


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

(assert (or (and (= p10_w p10_w_default) (= p10_h p10_h_default))                                         (and (= p10_w p10_h_default) (= p10_h p10_w_default)) ))

(assert (or (and (= p11_w p11_w_default) (= p11_h p11_h_default))                                         (and (= p11_w p11_h_default) (= p11_h p11_w_default)) ))

(assert (or (and (= p12_w p12_w_default) (= p12_h p12_h_default))                                         (and (= p12_w p12_h_default) (= p12_h p12_w_default)) ))

(assert (or (and (= p13_w p13_w_default) (= p13_h p13_h_default))                                         (and (= p13_w p13_h_default) (= p13_h p13_w_default)) ))

(assert (or (and (= p14_w p14_w_default) (= p14_h p14_h_default))                                         (and (= p14_w p14_h_default) (= p14_h p14_w_default)) ))

(assert (or (and (= p15_w p15_w_default) (= p15_h p15_h_default))                                         (and (= p15_w p15_h_default) (= p15_h p15_w_default)) ))

(assert (or (and (= p16_w p16_w_default) (= p16_h p16_h_default))                                         (and (= p16_w p16_h_default) (= p16_h p16_w_default)) ))

(assert (or (and (= p17_w p17_w_default) (= p17_h p17_h_default))                                         (and (= p17_w p17_h_default) (= p17_h p17_w_default)) ))

(assert (or (and (= p18_w p18_w_default) (= p18_h p18_h_default))                                         (and (= p18_w p18_h_default) (= p18_h p18_w_default)) ))

(assert (or (and (= p19_w p19_w_default) (= p19_h p19_h_default))                                         (and (= p19_w p19_h_default) (= p19_h p19_w_default)) ))

(assert (or (and (= p20_w p20_w_default) (= p20_h p20_h_default))                                         (and (= p20_w p20_h_default) (= p20_h p20_w_default)) ))

(assert (or (and (= p21_w p21_w_default) (= p21_h p21_h_default))                                         (and (= p21_w p21_h_default) (= p21_h p21_w_default)) ))

(assert (or (and (= p22_w p22_w_default) (= p22_h p22_h_default))                                         (and (= p22_w p22_h_default) (= p22_h p22_w_default)) ))

(assert (or (and (= p23_w p23_w_default) (= p23_h p23_h_default))                                         (and (= p23_w p23_h_default) (= p23_h p23_w_default)) ))

(assert (or (and (= p24_w p24_w_default) (= p24_h p24_h_default))                                         (and (= p24_w p24_h_default) (= p24_h p24_w_default)) ))



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
(declare-const p10_x Int)
(declare-const p10_y Int)
(declare-const p11_x Int)
(declare-const p11_y Int)
(declare-const p12_x Int)
(declare-const p12_y Int)
(declare-const p13_x Int)
(declare-const p13_y Int)
(declare-const p14_x Int)
(declare-const p14_y Int)
(declare-const p15_x Int)
(declare-const p15_y Int)
(declare-const p16_x Int)
(declare-const p16_y Int)
(declare-const p17_x Int)
(declare-const p17_y Int)
(declare-const p18_x Int)
(declare-const p18_y Int)
(declare-const p19_x Int)
(declare-const p19_y Int)
(declare-const p20_x Int)
(declare-const p20_y Int)
(declare-const p21_x Int)
(declare-const p21_y Int)
(declare-const p22_x Int)
(declare-const p22_y Int)
(declare-const p23_x Int)
(declare-const p23_y Int)
(declare-const p24_x Int)
(declare-const p24_y Int)



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
(assert (not (exceeds p10_x p10_y p10_w p10_h))) ;p10 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p11_x p11_y p11_w p11_h))) ;p11 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p12_x p12_y p12_w p12_h))) ;p12 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p13_x p13_y p13_w p13_h))) ;p13 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p14_x p14_y p14_w p14_h))) ;p14 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p15_x p15_y p15_w p15_h))) ;p15 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p16_x p16_y p16_w p16_h))) ;p16 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p17_x p17_y p17_w p17_h))) ;p17 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p18_x p18_y p18_w p18_h))) ;p18 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p19_x p19_y p19_w p19_h))) ;p19 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p20_x p20_y p20_w p20_h))) ;p20 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p21_x p21_y p21_w p21_h))) ;p21 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p22_x p22_y p22_w p22_h))) ;p22 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p23_x p23_y p23_w p23_h))) ;p23 coordinates do not exceed the sheet dimensions
(assert (not (exceeds p24_x p24_y p24_w p24_h))) ;p24 coordinates do not exceed the sheet dimensions


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

(assert (not (overlap p10_x p10_y p10_w p10_h p1_x p1_y p1_w p1_h))) 	;p10 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p10_x p10_y p10_w p10_h))) 	;p1 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p1_x p1_y p1_w p1_h))) 	;p11 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p11_x p11_y p11_w p11_h))) 	;p1 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p1_x p1_y p1_w p1_h))) 	;p12 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p12_x p12_y p12_w p12_h))) 	;p1 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p1_x p1_y p1_w p1_h))) 	;p13 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p13_x p13_y p13_w p13_h))) 	;p1 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p1_x p1_y p1_w p1_h))) 	;p14 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p14_x p14_y p14_w p14_h))) 	;p1 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p1_x p1_y p1_w p1_h))) 	;p15 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p15_x p15_y p15_w p15_h))) 	;p1 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p1_x p1_y p1_w p1_h))) 	;p16 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p16_x p16_y p16_w p16_h))) 	;p1 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p1_x p1_y p1_w p1_h))) 	;p17 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p17_x p17_y p17_w p17_h))) 	;p1 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p1_x p1_y p1_w p1_h))) 	;p18 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p18_x p18_y p18_w p18_h))) 	;p1 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p1_x p1_y p1_w p1_h))) 	;p19 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p19_x p19_y p19_w p19_h))) 	;p1 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p1_x p1_y p1_w p1_h))) 	;p20 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p20_x p20_y p20_w p20_h))) 	;p1 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p1_x p1_y p1_w p1_h))) 	;p21 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p21_x p21_y p21_w p21_h))) 	;p1 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p1_x p1_y p1_w p1_h))) 	;p22 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p22_x p22_y p22_w p22_h))) 	;p1 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p1_x p1_y p1_w p1_h))) 	;p23 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p23_x p23_y p23_w p23_h))) 	;p1 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p1_x p1_y p1_w p1_h))) 	;p24 with p1
(assert (not (overlap p1_x p1_y p1_w p1_h p24_x p24_y p24_w p24_h))) 	;p1 with p24

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

(assert (not (overlap p10_x p10_y p10_w p10_h p2_x p2_y p2_w p2_h))) 	;p10 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p10_x p10_y p10_w p10_h))) 	;p2 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p2_x p2_y p2_w p2_h))) 	;p11 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p11_x p11_y p11_w p11_h))) 	;p2 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p2_x p2_y p2_w p2_h))) 	;p12 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p12_x p12_y p12_w p12_h))) 	;p2 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p2_x p2_y p2_w p2_h))) 	;p13 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p13_x p13_y p13_w p13_h))) 	;p2 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p2_x p2_y p2_w p2_h))) 	;p14 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p14_x p14_y p14_w p14_h))) 	;p2 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p2_x p2_y p2_w p2_h))) 	;p15 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p15_x p15_y p15_w p15_h))) 	;p2 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p2_x p2_y p2_w p2_h))) 	;p16 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p16_x p16_y p16_w p16_h))) 	;p2 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p2_x p2_y p2_w p2_h))) 	;p17 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p17_x p17_y p17_w p17_h))) 	;p2 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p2_x p2_y p2_w p2_h))) 	;p18 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p18_x p18_y p18_w p18_h))) 	;p2 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p2_x p2_y p2_w p2_h))) 	;p19 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p19_x p19_y p19_w p19_h))) 	;p2 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p2_x p2_y p2_w p2_h))) 	;p20 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p20_x p20_y p20_w p20_h))) 	;p2 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p2_x p2_y p2_w p2_h))) 	;p21 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p21_x p21_y p21_w p21_h))) 	;p2 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p2_x p2_y p2_w p2_h))) 	;p22 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p22_x p22_y p22_w p22_h))) 	;p2 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p2_x p2_y p2_w p2_h))) 	;p23 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p23_x p23_y p23_w p23_h))) 	;p2 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p2_x p2_y p2_w p2_h))) 	;p24 with p2
(assert (not (overlap p2_x p2_y p2_w p2_h p24_x p24_y p24_w p24_h))) 	;p2 with p24

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

(assert (not (overlap p10_x p10_y p10_w p10_h p3_x p3_y p3_w p3_h))) 	;p10 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p10_x p10_y p10_w p10_h))) 	;p3 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p3_x p3_y p3_w p3_h))) 	;p11 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p11_x p11_y p11_w p11_h))) 	;p3 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p3_x p3_y p3_w p3_h))) 	;p12 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p12_x p12_y p12_w p12_h))) 	;p3 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p3_x p3_y p3_w p3_h))) 	;p13 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p13_x p13_y p13_w p13_h))) 	;p3 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p3_x p3_y p3_w p3_h))) 	;p14 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p14_x p14_y p14_w p14_h))) 	;p3 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p3_x p3_y p3_w p3_h))) 	;p15 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p15_x p15_y p15_w p15_h))) 	;p3 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p3_x p3_y p3_w p3_h))) 	;p16 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p16_x p16_y p16_w p16_h))) 	;p3 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p3_x p3_y p3_w p3_h))) 	;p17 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p17_x p17_y p17_w p17_h))) 	;p3 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p3_x p3_y p3_w p3_h))) 	;p18 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p18_x p18_y p18_w p18_h))) 	;p3 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p3_x p3_y p3_w p3_h))) 	;p19 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p19_x p19_y p19_w p19_h))) 	;p3 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p3_x p3_y p3_w p3_h))) 	;p20 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p20_x p20_y p20_w p20_h))) 	;p3 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p3_x p3_y p3_w p3_h))) 	;p21 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p21_x p21_y p21_w p21_h))) 	;p3 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p3_x p3_y p3_w p3_h))) 	;p22 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p22_x p22_y p22_w p22_h))) 	;p3 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p3_x p3_y p3_w p3_h))) 	;p23 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p23_x p23_y p23_w p23_h))) 	;p3 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p3_x p3_y p3_w p3_h))) 	;p24 with p3
(assert (not (overlap p3_x p3_y p3_w p3_h p24_x p24_y p24_w p24_h))) 	;p3 with p24

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

(assert (not (overlap p10_x p10_y p10_w p10_h p4_x p4_y p4_w p4_h))) 	;p10 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p10_x p10_y p10_w p10_h))) 	;p4 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p4_x p4_y p4_w p4_h))) 	;p11 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p11_x p11_y p11_w p11_h))) 	;p4 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p4_x p4_y p4_w p4_h))) 	;p12 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p12_x p12_y p12_w p12_h))) 	;p4 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p4_x p4_y p4_w p4_h))) 	;p13 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p13_x p13_y p13_w p13_h))) 	;p4 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p4_x p4_y p4_w p4_h))) 	;p14 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p14_x p14_y p14_w p14_h))) 	;p4 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p4_x p4_y p4_w p4_h))) 	;p15 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p15_x p15_y p15_w p15_h))) 	;p4 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p4_x p4_y p4_w p4_h))) 	;p16 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p16_x p16_y p16_w p16_h))) 	;p4 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p4_x p4_y p4_w p4_h))) 	;p17 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p17_x p17_y p17_w p17_h))) 	;p4 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p4_x p4_y p4_w p4_h))) 	;p18 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p18_x p18_y p18_w p18_h))) 	;p4 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p4_x p4_y p4_w p4_h))) 	;p19 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p19_x p19_y p19_w p19_h))) 	;p4 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p4_x p4_y p4_w p4_h))) 	;p20 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p20_x p20_y p20_w p20_h))) 	;p4 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p4_x p4_y p4_w p4_h))) 	;p21 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p21_x p21_y p21_w p21_h))) 	;p4 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p4_x p4_y p4_w p4_h))) 	;p22 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p22_x p22_y p22_w p22_h))) 	;p4 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p4_x p4_y p4_w p4_h))) 	;p23 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p23_x p23_y p23_w p23_h))) 	;p4 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p4_x p4_y p4_w p4_h))) 	;p24 with p4
(assert (not (overlap p4_x p4_y p4_w p4_h p24_x p24_y p24_w p24_h))) 	;p4 with p24

(assert (not (overlap p6_x p6_y p6_w p6_h p5_x p5_y p5_w p5_h))) 	;p6 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p6_x p6_y p6_w p6_h))) 	;p5 with p6

(assert (not (overlap p7_x p7_y p7_w p7_h p5_x p5_y p5_w p5_h))) 	;p7 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p7_x p7_y p7_w p7_h))) 	;p5 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p5_x p5_y p5_w p5_h))) 	;p8 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p8_x p8_y p8_w p8_h))) 	;p5 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p5_x p5_y p5_w p5_h))) 	;p9 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p9_x p9_y p9_w p9_h))) 	;p5 with p9

(assert (not (overlap p10_x p10_y p10_w p10_h p5_x p5_y p5_w p5_h))) 	;p10 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p10_x p10_y p10_w p10_h))) 	;p5 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p5_x p5_y p5_w p5_h))) 	;p11 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p11_x p11_y p11_w p11_h))) 	;p5 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p5_x p5_y p5_w p5_h))) 	;p12 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p12_x p12_y p12_w p12_h))) 	;p5 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p5_x p5_y p5_w p5_h))) 	;p13 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p13_x p13_y p13_w p13_h))) 	;p5 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p5_x p5_y p5_w p5_h))) 	;p14 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p14_x p14_y p14_w p14_h))) 	;p5 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p5_x p5_y p5_w p5_h))) 	;p15 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p15_x p15_y p15_w p15_h))) 	;p5 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p5_x p5_y p5_w p5_h))) 	;p16 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p16_x p16_y p16_w p16_h))) 	;p5 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p5_x p5_y p5_w p5_h))) 	;p17 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p17_x p17_y p17_w p17_h))) 	;p5 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p5_x p5_y p5_w p5_h))) 	;p18 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p18_x p18_y p18_w p18_h))) 	;p5 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p5_x p5_y p5_w p5_h))) 	;p19 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p19_x p19_y p19_w p19_h))) 	;p5 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p5_x p5_y p5_w p5_h))) 	;p20 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p20_x p20_y p20_w p20_h))) 	;p5 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p5_x p5_y p5_w p5_h))) 	;p21 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p21_x p21_y p21_w p21_h))) 	;p5 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p5_x p5_y p5_w p5_h))) 	;p22 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p22_x p22_y p22_w p22_h))) 	;p5 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p5_x p5_y p5_w p5_h))) 	;p23 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p23_x p23_y p23_w p23_h))) 	;p5 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p5_x p5_y p5_w p5_h))) 	;p24 with p5
(assert (not (overlap p5_x p5_y p5_w p5_h p24_x p24_y p24_w p24_h))) 	;p5 with p24

(assert (not (overlap p7_x p7_y p7_w p7_h p6_x p6_y p6_w p6_h))) 	;p7 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p7_x p7_y p7_w p7_h))) 	;p6 with p7

(assert (not (overlap p8_x p8_y p8_w p8_h p6_x p6_y p6_w p6_h))) 	;p8 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p8_x p8_y p8_w p8_h))) 	;p6 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p6_x p6_y p6_w p6_h))) 	;p9 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p9_x p9_y p9_w p9_h))) 	;p6 with p9

(assert (not (overlap p10_x p10_y p10_w p10_h p6_x p6_y p6_w p6_h))) 	;p10 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p10_x p10_y p10_w p10_h))) 	;p6 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p6_x p6_y p6_w p6_h))) 	;p11 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p11_x p11_y p11_w p11_h))) 	;p6 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p6_x p6_y p6_w p6_h))) 	;p12 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p12_x p12_y p12_w p12_h))) 	;p6 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p6_x p6_y p6_w p6_h))) 	;p13 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p13_x p13_y p13_w p13_h))) 	;p6 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p6_x p6_y p6_w p6_h))) 	;p14 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p14_x p14_y p14_w p14_h))) 	;p6 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p6_x p6_y p6_w p6_h))) 	;p15 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p15_x p15_y p15_w p15_h))) 	;p6 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p6_x p6_y p6_w p6_h))) 	;p16 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p16_x p16_y p16_w p16_h))) 	;p6 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p6_x p6_y p6_w p6_h))) 	;p17 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p17_x p17_y p17_w p17_h))) 	;p6 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p6_x p6_y p6_w p6_h))) 	;p18 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p18_x p18_y p18_w p18_h))) 	;p6 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p6_x p6_y p6_w p6_h))) 	;p19 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p19_x p19_y p19_w p19_h))) 	;p6 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p6_x p6_y p6_w p6_h))) 	;p20 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p20_x p20_y p20_w p20_h))) 	;p6 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p6_x p6_y p6_w p6_h))) 	;p21 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p21_x p21_y p21_w p21_h))) 	;p6 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p6_x p6_y p6_w p6_h))) 	;p22 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p22_x p22_y p22_w p22_h))) 	;p6 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p6_x p6_y p6_w p6_h))) 	;p23 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p23_x p23_y p23_w p23_h))) 	;p6 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p6_x p6_y p6_w p6_h))) 	;p24 with p6
(assert (not (overlap p6_x p6_y p6_w p6_h p24_x p24_y p24_w p24_h))) 	;p6 with p24

(assert (not (overlap p8_x p8_y p8_w p8_h p7_x p7_y p7_w p7_h))) 	;p8 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p8_x p8_y p8_w p8_h))) 	;p7 with p8

(assert (not (overlap p9_x p9_y p9_w p9_h p7_x p7_y p7_w p7_h))) 	;p9 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p9_x p9_y p9_w p9_h))) 	;p7 with p9

(assert (not (overlap p10_x p10_y p10_w p10_h p7_x p7_y p7_w p7_h))) 	;p10 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p10_x p10_y p10_w p10_h))) 	;p7 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p7_x p7_y p7_w p7_h))) 	;p11 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p11_x p11_y p11_w p11_h))) 	;p7 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p7_x p7_y p7_w p7_h))) 	;p12 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p12_x p12_y p12_w p12_h))) 	;p7 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p7_x p7_y p7_w p7_h))) 	;p13 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p13_x p13_y p13_w p13_h))) 	;p7 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p7_x p7_y p7_w p7_h))) 	;p14 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p14_x p14_y p14_w p14_h))) 	;p7 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p7_x p7_y p7_w p7_h))) 	;p15 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p15_x p15_y p15_w p15_h))) 	;p7 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p7_x p7_y p7_w p7_h))) 	;p16 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p16_x p16_y p16_w p16_h))) 	;p7 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p7_x p7_y p7_w p7_h))) 	;p17 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p17_x p17_y p17_w p17_h))) 	;p7 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p7_x p7_y p7_w p7_h))) 	;p18 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p18_x p18_y p18_w p18_h))) 	;p7 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p7_x p7_y p7_w p7_h))) 	;p19 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p19_x p19_y p19_w p19_h))) 	;p7 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p7_x p7_y p7_w p7_h))) 	;p20 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p20_x p20_y p20_w p20_h))) 	;p7 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p7_x p7_y p7_w p7_h))) 	;p21 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p21_x p21_y p21_w p21_h))) 	;p7 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p7_x p7_y p7_w p7_h))) 	;p22 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p22_x p22_y p22_w p22_h))) 	;p7 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p7_x p7_y p7_w p7_h))) 	;p23 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p23_x p23_y p23_w p23_h))) 	;p7 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p7_x p7_y p7_w p7_h))) 	;p24 with p7
(assert (not (overlap p7_x p7_y p7_w p7_h p24_x p24_y p24_w p24_h))) 	;p7 with p24

(assert (not (overlap p9_x p9_y p9_w p9_h p8_x p8_y p8_w p8_h))) 	;p9 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p9_x p9_y p9_w p9_h))) 	;p8 with p9

(assert (not (overlap p10_x p10_y p10_w p10_h p8_x p8_y p8_w p8_h))) 	;p10 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p10_x p10_y p10_w p10_h))) 	;p8 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p8_x p8_y p8_w p8_h))) 	;p11 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p11_x p11_y p11_w p11_h))) 	;p8 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p8_x p8_y p8_w p8_h))) 	;p12 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p12_x p12_y p12_w p12_h))) 	;p8 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p8_x p8_y p8_w p8_h))) 	;p13 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p13_x p13_y p13_w p13_h))) 	;p8 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p8_x p8_y p8_w p8_h))) 	;p14 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p14_x p14_y p14_w p14_h))) 	;p8 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p8_x p8_y p8_w p8_h))) 	;p15 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p15_x p15_y p15_w p15_h))) 	;p8 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p8_x p8_y p8_w p8_h))) 	;p16 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p16_x p16_y p16_w p16_h))) 	;p8 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p8_x p8_y p8_w p8_h))) 	;p17 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p17_x p17_y p17_w p17_h))) 	;p8 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p8_x p8_y p8_w p8_h))) 	;p18 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p18_x p18_y p18_w p18_h))) 	;p8 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p8_x p8_y p8_w p8_h))) 	;p19 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p19_x p19_y p19_w p19_h))) 	;p8 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p8_x p8_y p8_w p8_h))) 	;p20 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p20_x p20_y p20_w p20_h))) 	;p8 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p8_x p8_y p8_w p8_h))) 	;p21 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p21_x p21_y p21_w p21_h))) 	;p8 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p8_x p8_y p8_w p8_h))) 	;p22 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p22_x p22_y p22_w p22_h))) 	;p8 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p8_x p8_y p8_w p8_h))) 	;p23 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p23_x p23_y p23_w p23_h))) 	;p8 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p8_x p8_y p8_w p8_h))) 	;p24 with p8
(assert (not (overlap p8_x p8_y p8_w p8_h p24_x p24_y p24_w p24_h))) 	;p8 with p24

(assert (not (overlap p10_x p10_y p10_w p10_h p9_x p9_y p9_w p9_h))) 	;p10 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p10_x p10_y p10_w p10_h))) 	;p9 with p10

(assert (not (overlap p11_x p11_y p11_w p11_h p9_x p9_y p9_w p9_h))) 	;p11 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p11_x p11_y p11_w p11_h))) 	;p9 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p9_x p9_y p9_w p9_h))) 	;p12 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p12_x p12_y p12_w p12_h))) 	;p9 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p9_x p9_y p9_w p9_h))) 	;p13 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p13_x p13_y p13_w p13_h))) 	;p9 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p9_x p9_y p9_w p9_h))) 	;p14 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p14_x p14_y p14_w p14_h))) 	;p9 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p9_x p9_y p9_w p9_h))) 	;p15 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p15_x p15_y p15_w p15_h))) 	;p9 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p9_x p9_y p9_w p9_h))) 	;p16 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p16_x p16_y p16_w p16_h))) 	;p9 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p9_x p9_y p9_w p9_h))) 	;p17 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p17_x p17_y p17_w p17_h))) 	;p9 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p9_x p9_y p9_w p9_h))) 	;p18 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p18_x p18_y p18_w p18_h))) 	;p9 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p9_x p9_y p9_w p9_h))) 	;p19 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p19_x p19_y p19_w p19_h))) 	;p9 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p9_x p9_y p9_w p9_h))) 	;p20 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p20_x p20_y p20_w p20_h))) 	;p9 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p9_x p9_y p9_w p9_h))) 	;p21 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p21_x p21_y p21_w p21_h))) 	;p9 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p9_x p9_y p9_w p9_h))) 	;p22 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p22_x p22_y p22_w p22_h))) 	;p9 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p9_x p9_y p9_w p9_h))) 	;p23 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p23_x p23_y p23_w p23_h))) 	;p9 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p9_x p9_y p9_w p9_h))) 	;p24 with p9
(assert (not (overlap p9_x p9_y p9_w p9_h p24_x p24_y p24_w p24_h))) 	;p9 with p24

(assert (not (overlap p11_x p11_y p11_w p11_h p10_x p10_y p10_w p10_h))) 	;p11 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p11_x p11_y p11_w p11_h))) 	;p10 with p11

(assert (not (overlap p12_x p12_y p12_w p12_h p10_x p10_y p10_w p10_h))) 	;p12 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p12_x p12_y p12_w p12_h))) 	;p10 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p10_x p10_y p10_w p10_h))) 	;p13 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p13_x p13_y p13_w p13_h))) 	;p10 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p10_x p10_y p10_w p10_h))) 	;p14 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p14_x p14_y p14_w p14_h))) 	;p10 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p10_x p10_y p10_w p10_h))) 	;p15 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p15_x p15_y p15_w p15_h))) 	;p10 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p10_x p10_y p10_w p10_h))) 	;p16 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p16_x p16_y p16_w p16_h))) 	;p10 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p10_x p10_y p10_w p10_h))) 	;p17 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p17_x p17_y p17_w p17_h))) 	;p10 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p10_x p10_y p10_w p10_h))) 	;p18 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p18_x p18_y p18_w p18_h))) 	;p10 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p10_x p10_y p10_w p10_h))) 	;p19 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p19_x p19_y p19_w p19_h))) 	;p10 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p10_x p10_y p10_w p10_h))) 	;p20 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p20_x p20_y p20_w p20_h))) 	;p10 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p10_x p10_y p10_w p10_h))) 	;p21 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p21_x p21_y p21_w p21_h))) 	;p10 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p10_x p10_y p10_w p10_h))) 	;p22 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p22_x p22_y p22_w p22_h))) 	;p10 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p10_x p10_y p10_w p10_h))) 	;p23 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p23_x p23_y p23_w p23_h))) 	;p10 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p10_x p10_y p10_w p10_h))) 	;p24 with p10
(assert (not (overlap p10_x p10_y p10_w p10_h p24_x p24_y p24_w p24_h))) 	;p10 with p24

(assert (not (overlap p12_x p12_y p12_w p12_h p11_x p11_y p11_w p11_h))) 	;p12 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p12_x p12_y p12_w p12_h))) 	;p11 with p12

(assert (not (overlap p13_x p13_y p13_w p13_h p11_x p11_y p11_w p11_h))) 	;p13 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p13_x p13_y p13_w p13_h))) 	;p11 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p11_x p11_y p11_w p11_h))) 	;p14 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p14_x p14_y p14_w p14_h))) 	;p11 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p11_x p11_y p11_w p11_h))) 	;p15 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p15_x p15_y p15_w p15_h))) 	;p11 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p11_x p11_y p11_w p11_h))) 	;p16 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p16_x p16_y p16_w p16_h))) 	;p11 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p11_x p11_y p11_w p11_h))) 	;p17 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p17_x p17_y p17_w p17_h))) 	;p11 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p11_x p11_y p11_w p11_h))) 	;p18 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p18_x p18_y p18_w p18_h))) 	;p11 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p11_x p11_y p11_w p11_h))) 	;p19 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p19_x p19_y p19_w p19_h))) 	;p11 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p11_x p11_y p11_w p11_h))) 	;p20 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p20_x p20_y p20_w p20_h))) 	;p11 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p11_x p11_y p11_w p11_h))) 	;p21 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p21_x p21_y p21_w p21_h))) 	;p11 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p11_x p11_y p11_w p11_h))) 	;p22 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p22_x p22_y p22_w p22_h))) 	;p11 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p11_x p11_y p11_w p11_h))) 	;p23 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p23_x p23_y p23_w p23_h))) 	;p11 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p11_x p11_y p11_w p11_h))) 	;p24 with p11
(assert (not (overlap p11_x p11_y p11_w p11_h p24_x p24_y p24_w p24_h))) 	;p11 with p24

(assert (not (overlap p13_x p13_y p13_w p13_h p12_x p12_y p12_w p12_h))) 	;p13 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p13_x p13_y p13_w p13_h))) 	;p12 with p13

(assert (not (overlap p14_x p14_y p14_w p14_h p12_x p12_y p12_w p12_h))) 	;p14 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p14_x p14_y p14_w p14_h))) 	;p12 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p12_x p12_y p12_w p12_h))) 	;p15 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p15_x p15_y p15_w p15_h))) 	;p12 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p12_x p12_y p12_w p12_h))) 	;p16 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p16_x p16_y p16_w p16_h))) 	;p12 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p12_x p12_y p12_w p12_h))) 	;p17 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p17_x p17_y p17_w p17_h))) 	;p12 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p12_x p12_y p12_w p12_h))) 	;p18 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p18_x p18_y p18_w p18_h))) 	;p12 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p12_x p12_y p12_w p12_h))) 	;p19 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p19_x p19_y p19_w p19_h))) 	;p12 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p12_x p12_y p12_w p12_h))) 	;p20 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p20_x p20_y p20_w p20_h))) 	;p12 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p12_x p12_y p12_w p12_h))) 	;p21 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p21_x p21_y p21_w p21_h))) 	;p12 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p12_x p12_y p12_w p12_h))) 	;p22 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p22_x p22_y p22_w p22_h))) 	;p12 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p12_x p12_y p12_w p12_h))) 	;p23 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p23_x p23_y p23_w p23_h))) 	;p12 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p12_x p12_y p12_w p12_h))) 	;p24 with p12
(assert (not (overlap p12_x p12_y p12_w p12_h p24_x p24_y p24_w p24_h))) 	;p12 with p24

(assert (not (overlap p14_x p14_y p14_w p14_h p13_x p13_y p13_w p13_h))) 	;p14 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p14_x p14_y p14_w p14_h))) 	;p13 with p14

(assert (not (overlap p15_x p15_y p15_w p15_h p13_x p13_y p13_w p13_h))) 	;p15 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p15_x p15_y p15_w p15_h))) 	;p13 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p13_x p13_y p13_w p13_h))) 	;p16 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p16_x p16_y p16_w p16_h))) 	;p13 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p13_x p13_y p13_w p13_h))) 	;p17 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p17_x p17_y p17_w p17_h))) 	;p13 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p13_x p13_y p13_w p13_h))) 	;p18 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p18_x p18_y p18_w p18_h))) 	;p13 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p13_x p13_y p13_w p13_h))) 	;p19 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p19_x p19_y p19_w p19_h))) 	;p13 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p13_x p13_y p13_w p13_h))) 	;p20 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p20_x p20_y p20_w p20_h))) 	;p13 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p13_x p13_y p13_w p13_h))) 	;p21 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p21_x p21_y p21_w p21_h))) 	;p13 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p13_x p13_y p13_w p13_h))) 	;p22 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p22_x p22_y p22_w p22_h))) 	;p13 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p13_x p13_y p13_w p13_h))) 	;p23 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p23_x p23_y p23_w p23_h))) 	;p13 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p13_x p13_y p13_w p13_h))) 	;p24 with p13
(assert (not (overlap p13_x p13_y p13_w p13_h p24_x p24_y p24_w p24_h))) 	;p13 with p24

(assert (not (overlap p15_x p15_y p15_w p15_h p14_x p14_y p14_w p14_h))) 	;p15 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p15_x p15_y p15_w p15_h))) 	;p14 with p15

(assert (not (overlap p16_x p16_y p16_w p16_h p14_x p14_y p14_w p14_h))) 	;p16 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p16_x p16_y p16_w p16_h))) 	;p14 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p14_x p14_y p14_w p14_h))) 	;p17 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p17_x p17_y p17_w p17_h))) 	;p14 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p14_x p14_y p14_w p14_h))) 	;p18 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p18_x p18_y p18_w p18_h))) 	;p14 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p14_x p14_y p14_w p14_h))) 	;p19 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p19_x p19_y p19_w p19_h))) 	;p14 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p14_x p14_y p14_w p14_h))) 	;p20 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p20_x p20_y p20_w p20_h))) 	;p14 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p14_x p14_y p14_w p14_h))) 	;p21 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p21_x p21_y p21_w p21_h))) 	;p14 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p14_x p14_y p14_w p14_h))) 	;p22 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p22_x p22_y p22_w p22_h))) 	;p14 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p14_x p14_y p14_w p14_h))) 	;p23 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p23_x p23_y p23_w p23_h))) 	;p14 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p14_x p14_y p14_w p14_h))) 	;p24 with p14
(assert (not (overlap p14_x p14_y p14_w p14_h p24_x p24_y p24_w p24_h))) 	;p14 with p24

(assert (not (overlap p16_x p16_y p16_w p16_h p15_x p15_y p15_w p15_h))) 	;p16 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p16_x p16_y p16_w p16_h))) 	;p15 with p16

(assert (not (overlap p17_x p17_y p17_w p17_h p15_x p15_y p15_w p15_h))) 	;p17 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p17_x p17_y p17_w p17_h))) 	;p15 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p15_x p15_y p15_w p15_h))) 	;p18 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p18_x p18_y p18_w p18_h))) 	;p15 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p15_x p15_y p15_w p15_h))) 	;p19 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p19_x p19_y p19_w p19_h))) 	;p15 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p15_x p15_y p15_w p15_h))) 	;p20 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p20_x p20_y p20_w p20_h))) 	;p15 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p15_x p15_y p15_w p15_h))) 	;p21 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p21_x p21_y p21_w p21_h))) 	;p15 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p15_x p15_y p15_w p15_h))) 	;p22 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p22_x p22_y p22_w p22_h))) 	;p15 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p15_x p15_y p15_w p15_h))) 	;p23 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p23_x p23_y p23_w p23_h))) 	;p15 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p15_x p15_y p15_w p15_h))) 	;p24 with p15
(assert (not (overlap p15_x p15_y p15_w p15_h p24_x p24_y p24_w p24_h))) 	;p15 with p24

(assert (not (overlap p17_x p17_y p17_w p17_h p16_x p16_y p16_w p16_h))) 	;p17 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p17_x p17_y p17_w p17_h))) 	;p16 with p17

(assert (not (overlap p18_x p18_y p18_w p18_h p16_x p16_y p16_w p16_h))) 	;p18 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p18_x p18_y p18_w p18_h))) 	;p16 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p16_x p16_y p16_w p16_h))) 	;p19 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p19_x p19_y p19_w p19_h))) 	;p16 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p16_x p16_y p16_w p16_h))) 	;p20 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p20_x p20_y p20_w p20_h))) 	;p16 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p16_x p16_y p16_w p16_h))) 	;p21 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p21_x p21_y p21_w p21_h))) 	;p16 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p16_x p16_y p16_w p16_h))) 	;p22 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p22_x p22_y p22_w p22_h))) 	;p16 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p16_x p16_y p16_w p16_h))) 	;p23 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p23_x p23_y p23_w p23_h))) 	;p16 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p16_x p16_y p16_w p16_h))) 	;p24 with p16
(assert (not (overlap p16_x p16_y p16_w p16_h p24_x p24_y p24_w p24_h))) 	;p16 with p24

(assert (not (overlap p18_x p18_y p18_w p18_h p17_x p17_y p17_w p17_h))) 	;p18 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p18_x p18_y p18_w p18_h))) 	;p17 with p18

(assert (not (overlap p19_x p19_y p19_w p19_h p17_x p17_y p17_w p17_h))) 	;p19 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p19_x p19_y p19_w p19_h))) 	;p17 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p17_x p17_y p17_w p17_h))) 	;p20 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p20_x p20_y p20_w p20_h))) 	;p17 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p17_x p17_y p17_w p17_h))) 	;p21 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p21_x p21_y p21_w p21_h))) 	;p17 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p17_x p17_y p17_w p17_h))) 	;p22 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p22_x p22_y p22_w p22_h))) 	;p17 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p17_x p17_y p17_w p17_h))) 	;p23 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p23_x p23_y p23_w p23_h))) 	;p17 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p17_x p17_y p17_w p17_h))) 	;p24 with p17
(assert (not (overlap p17_x p17_y p17_w p17_h p24_x p24_y p24_w p24_h))) 	;p17 with p24

(assert (not (overlap p19_x p19_y p19_w p19_h p18_x p18_y p18_w p18_h))) 	;p19 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p19_x p19_y p19_w p19_h))) 	;p18 with p19

(assert (not (overlap p20_x p20_y p20_w p20_h p18_x p18_y p18_w p18_h))) 	;p20 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p20_x p20_y p20_w p20_h))) 	;p18 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p18_x p18_y p18_w p18_h))) 	;p21 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p21_x p21_y p21_w p21_h))) 	;p18 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p18_x p18_y p18_w p18_h))) 	;p22 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p22_x p22_y p22_w p22_h))) 	;p18 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p18_x p18_y p18_w p18_h))) 	;p23 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p23_x p23_y p23_w p23_h))) 	;p18 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p18_x p18_y p18_w p18_h))) 	;p24 with p18
(assert (not (overlap p18_x p18_y p18_w p18_h p24_x p24_y p24_w p24_h))) 	;p18 with p24

(assert (not (overlap p20_x p20_y p20_w p20_h p19_x p19_y p19_w p19_h))) 	;p20 with p19
(assert (not (overlap p19_x p19_y p19_w p19_h p20_x p20_y p20_w p20_h))) 	;p19 with p20

(assert (not (overlap p21_x p21_y p21_w p21_h p19_x p19_y p19_w p19_h))) 	;p21 with p19
(assert (not (overlap p19_x p19_y p19_w p19_h p21_x p21_y p21_w p21_h))) 	;p19 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p19_x p19_y p19_w p19_h))) 	;p22 with p19
(assert (not (overlap p19_x p19_y p19_w p19_h p22_x p22_y p22_w p22_h))) 	;p19 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p19_x p19_y p19_w p19_h))) 	;p23 with p19
(assert (not (overlap p19_x p19_y p19_w p19_h p23_x p23_y p23_w p23_h))) 	;p19 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p19_x p19_y p19_w p19_h))) 	;p24 with p19
(assert (not (overlap p19_x p19_y p19_w p19_h p24_x p24_y p24_w p24_h))) 	;p19 with p24

(assert (not (overlap p21_x p21_y p21_w p21_h p20_x p20_y p20_w p20_h))) 	;p21 with p20
(assert (not (overlap p20_x p20_y p20_w p20_h p21_x p21_y p21_w p21_h))) 	;p20 with p21

(assert (not (overlap p22_x p22_y p22_w p22_h p20_x p20_y p20_w p20_h))) 	;p22 with p20
(assert (not (overlap p20_x p20_y p20_w p20_h p22_x p22_y p22_w p22_h))) 	;p20 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p20_x p20_y p20_w p20_h))) 	;p23 with p20
(assert (not (overlap p20_x p20_y p20_w p20_h p23_x p23_y p23_w p23_h))) 	;p20 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p20_x p20_y p20_w p20_h))) 	;p24 with p20
(assert (not (overlap p20_x p20_y p20_w p20_h p24_x p24_y p24_w p24_h))) 	;p20 with p24

(assert (not (overlap p22_x p22_y p22_w p22_h p21_x p21_y p21_w p21_h))) 	;p22 with p21
(assert (not (overlap p21_x p21_y p21_w p21_h p22_x p22_y p22_w p22_h))) 	;p21 with p22

(assert (not (overlap p23_x p23_y p23_w p23_h p21_x p21_y p21_w p21_h))) 	;p23 with p21
(assert (not (overlap p21_x p21_y p21_w p21_h p23_x p23_y p23_w p23_h))) 	;p21 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p21_x p21_y p21_w p21_h))) 	;p24 with p21
(assert (not (overlap p21_x p21_y p21_w p21_h p24_x p24_y p24_w p24_h))) 	;p21 with p24

(assert (not (overlap p23_x p23_y p23_w p23_h p22_x p22_y p22_w p22_h))) 	;p23 with p22
(assert (not (overlap p22_x p22_y p22_w p22_h p23_x p23_y p23_w p23_h))) 	;p22 with p23

(assert (not (overlap p24_x p24_y p24_w p24_h p22_x p22_y p22_w p22_h))) 	;p24 with p22
(assert (not (overlap p22_x p22_y p22_w p22_h p24_x p24_y p24_w p24_h))) 	;p22 with p24

(assert (not (overlap p24_x p24_y p24_w p24_h p23_x p23_y p23_w p23_h))) 	;p24 with p23
(assert (not (overlap p23_x p23_y p23_w p23_h p24_x p24_y p24_w p24_h))) 	;p23 with p24




; sat-checking
(check-sat)
(get-model)
