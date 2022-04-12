#lang racket
(provide (all-defined-out))


(define (cardsSet element numE maxC rndFn)
  (list element numE maxC rndFn)
  )

;Selector del element.
;Dom: Lista x lista
;Rec: Lista
(define (getElement element)
  (cadr element)
  )
;Selector del numE.
;Dom: Lista x lista
;Rec: Lista
(define (getNumE numE)
  (caddr numE)
  )
;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getMaxC maxC)
  (cadddr maxC)
  )
;Selector : 
;Dom: Lista x lista
;Rec: Lista
(define (getRndFn rndFn)
  (cadddr(cdr rndFn))
  )

