#lang racket
(provide (all-defined-out))


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