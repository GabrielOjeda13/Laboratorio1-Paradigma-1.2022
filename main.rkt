#lang racket
(provide (all-defined-out))
(require "cardsSet.rkt")
;Hola Mundo.

;Funcion dobble: Verifica que en el mazo de cartas se cumplan las condiciones
;Dom: cardsSet
;Rec: Boolean
;Recursion: Natural
;Ejemplo de uso:
(define (dobble? cards)
  (if (null?  (getElement cards))
      #t
      #f
   )
)

;Funcion numCards: Permite determinar la cantidad de cartes en el set.
;Dom: cardsSet
;Rec: int
;Recursion: Natural
;Ejemplo de uso:
(define (numCards cards)
  (if (null?  (getMaxC cards))
      #t
      #f
   )
)

;Funcion nthCard: Obtiene la n-esima carta del set, partiendo desde 0 hasta TotalCarta-1.
;Dom: cardsSet X Entero
;Rec: card
;Recursion: Natural
;Ejemplo de uso:
(define (nthCard card Entero)
)

;Funcion findTotalCards: A partir de una carta de muestra determina la cantidad total de cartas que se deben producir para un conjunto valido
;Dom: card
;Rec: int
;Recursion: Natural
;Ejemplo de uso:
(define (findTotalCards card)
)


;Funcion requiredElements: A partir de una carta de muestra determina la cantidad total de elementos necesarios para poder construir un conjunto valido.
;Dom: card
;Rec: int
;Recursion: Natural
;Ejemplo de uso:
(define (requiredElements card)
)

;Funcion missingCards:  A partir de un conjunto de cartas retorna el conjunto de cartas que hacen falta para que el set sea valido.
;Dom: cardsSet
;Rec: cardsSet
;Recursion: Natural
;Ejemplo de uso:
(define (missingCards cards)
)


;Funcion cardsSet->string: convierte un conjunto de cartas a una representación basada en strings que posteriormente pueda visualizarse a través de la función display.
;Dom: cardsSet
;Rec: string
;Recursion: Natural
;Ejemplo de uso:
(define (cardsSet->string cards)
)











;Funcion Concatenar: Concatena dos listas
;Dom: Lista x lista
;Rec: Lista
;Recursion: Natural
(define (concatenar lista1 lista2)
  (if(null? lista1)
     lista2
     (cons (car lista1) (concatenar (cdr lista1) lista2))
  )
)

;Funcion mi-map: sirve para hacer lo mismo que hace la funcion MAP 
;Dom: Lista
;Rec: Lista
;Recursion: cola
;Ejemplo de uso:
(define mi-map (lambda(funcion lista)
                 (if(empty? lista) '()

                    (cons (funcion (car lista)) (mi-map funcion (cdr lista)))
                    )
                 )
  )


(define m 2147483647)
(define a 1103515245)
(define c 12345)

(define randomFn (lambda (xn)
                   (modulo (+ (* a xn) c) m)
                 )
)
