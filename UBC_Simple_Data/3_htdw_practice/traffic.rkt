(require 2htdp/image)
(require 2htdp/universe)

;
; PROBLEM:
;
; Design an animation of a traffic light.
;
; Your program should show a traffic light that is red, then green,
; then yellow, then red etc. For this program, your changing world
; state data definition should be an enumeration.
;
; Here is what your program might look like if the initial world
; state was the red traffic light:
; .
; Next:
; .
; Next:
; .
; Next is red, and so on.
;
; To make your lights change at a reasonable speed, you can use the
; rate option to on-tick. If you say, for example, (on-tick next-color 1)
; then big-bang will wait 1 second between calls to next-color.
;
; Remember to follow the HtDW recipe! Be sure to do a proper domain
; analysis before starting to work on the code file.
;
; Note: If you want to design a slightly simpler version of the program,
; you can modify it to display a single circle that changes color, rather
; than three stacked circles.
;


; HtDW

; Constant Information
; Empty screen
; Screen Width
; Screen Height
; Speed
; X-position of lights
; Y-position of lights
; Red Image
; Yellow Image
; Green Image

; Changing Information
; Light Colour

; BigBang options
; on-tick
; to-draw

;; =================
;; Constants:

(define WIDTH  100)
(define HEIGHT 200)
(define XPOS   (/ WIDTH 2))
(define YPOS   (/ HEIGHT 2))
(define MTS (empty-scene WIDTH HEIGHT))
(define SPEED  1)

(define RED .)

(define YELLOW .)

(define GREEN .)

;; =================
;; Data definitions:

;; TL is one of:
;; - "green"
;; - "yellow"
;; - "red"

(define TL1 "green")
(define TL2 "yellow")
(define TL3 "red")


;; Interpretation
;; TL represents one of three states for a traffic light colour

;; Template
#;
(define (fn-for-TL tl)
  (cond [(string=? tl TL1) (...)]
        [(string=? tl TL2) (...)]
        [else              (...)]))

;; Template rules
;; one of:          3 cases
;; atomic distinct: "green"
;; atomic distinct: "yellow"
;; atomic distinct: "red"

;; =================
;; Functions:

;; TL -> TL
;; start the world with (main "red")
;; no tests for main function
(define (main tl)
  (big-bang tl                                 ; TL
            (on-tick   change-color SPEED)     ; TL -> TL
            (to-draw   draw-light)))           ; TL -> Image

;; TL -> TL
;; Changes the color of the traffic light to the next color
;; (define (change-color tl) "red")
(check-expect (change-color TL1) TL2)
(check-expect (change-color TL2) TL3)
(check-expect (change-color TL3) TL1)

(define (change-color tl)
  (cond [(string=? tl TL1) TL2]
        [(string=? tl TL2) TL3]
        [else TL1]))

;; TL -> Image
;; render the new traffic light image based on the tl state
;; (define (draw-light tl) (place-image RED XPOS YPOS MTS))

(check-expect (draw-light TL1) (place-image GREEN XPOS YPOS MTS))
(check-expect (draw-light TL2) (place-image YELLOW XPOS YPOS MTS))
(check-expect (draw-light TL3) (place-image RED XPOS YPOS MTS))

(define (draw-light tl)
  (cond [(string=? tl TL1) (place-image GREEN XPOS YPOS MTS)]
        [(string=? tl TL2) (place-image YELLOW XPOS YPOS MTS)]
        [else (place-image RED XPOS YPOS MTS)]))