; Graph of the 'humpback function'
(require plot)
(plot-new-window? #t)
(define (square x) (* x x))
(define humpback
  (λ (x y) (+ 
              (* x y) 
              (* (square x) 
                 (+ 4 
                    (* (- 2.1) (square x)) 
                    (* (/ 1 3) (expt x 4))))
              (* (square y)
                 (+ (- 4) (* 4 (square y)))))))
(plot3d (surface3d humpback
                   (- 2) 2 (- 1) 1)
        #:title "An R x R -> R function"
        #:x-label "x" #:y-label "y" #:z-label "f(x, y)")
