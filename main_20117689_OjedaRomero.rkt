#lang racket
(provide (all-defined-out))
(require "cardsSet.rkt")
;Hola Mundo.

; ------ FUNCION TDA CARDSSET -------.

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
(define (nthCard card entero)
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



; ------ FUNCION TDA GAME -------.

;Funcion stackMode: Función que permite retirar y voltear las dos cartas superiores del stack de cartas en el juego y las dispone en el área de juego.
;Dom: cardsSet
;Rec: cardsSet
;Recursion: Natural
;Ejemplo de uso:
(define (stackMode cards)
)

;Funcion register: Función para registrar a un jugador en un juego. Los jugadores tienen un nombre único y no puede exceder la cantidad de jugadores registrados.
;Dom: user(String) X game
;Rec: game
;Recursion: Natural
;Ejemplo de uso:
(define (register user gamer)
)


;Funcion whoseTurnIsIt?: Función que retorna el usuario a quién le corresponde jugar en el turno.
;Dom: game
;Rec: string
;Recursion: Natural
;Ejemplo de uso:
(define (whoseTurnIsIt? gamer)
)

;Funcion play:  permite realizar una jugada a partir de la acción especificadas por la función currificada action. Las jugadas parten sin una acción especificada,
;lo que activa internamente el uso de la función stackMode para el trabajo sobre las cartas.
;Dom: game X action(fn)
;Rec: game.
;Recursion: Natural
;Ejemplo de uso:
(define (play game action)
)


;Funcion status: Función que retorna el estado actual del juego.
;Dom: game
;Rec: string
;Recursion: Natural
;Ejemplo de uso:
(define (status gamer)
)

;Funcion score: Función que retorna el puntaje de un jugador a partir de su nombre de usuario.
;Dom: game
;Rec: int
;Recursion: Natural
;Ejemplo de uso:
(define (score gamer)
)

;Funcion game->string: convierte un juego/partida a una representación basada en strings que posteriormente pueda visualizarse a través de la función display.
;Dom: game
;Rec: string
;Recursion: Natural
;Ejemplo de uso:
(define (game->string gamer)
)

;Funcion addCard:  Función que permite agregar cartas a un set de manera manual procurando verificar que las cartas incorporadas no violan las restricciones de un set válido,
;aunque incompleto. Por tanto, no pueden ocurrir situaciones como que dos cartas en el set tienen más de una figura en común. Si una violación ocurre, se devuelve el conjunto de entrada.
;Dom: cardsSet X card
;Rec: cardsSet
;Recursion: Natural
;Ejemplo de uso:
(define (addCard cards card)
)

;Funcion emptyHandsStackMode: Función que permite retirar y voltear la carta en el tope del stack y una de las cartas del usuario seleccionada
;de manera aleatoria a partir de la función de aleatorización registrada en el juego.
;Al terminar un turno, si el jugador acierta se ubican en la base del stack, de lo contrario la carta del jugador vuelva a sus cartas y la del stack vuelve a la base de éste.
;Dom: cardsSet
;Rec: cardsSet
;Recursion: Natural
;Ejemplo de uso:
(define (empytHandsStackMode cards)
)

;Funcion myMode:  Crea tu propia modalidad de juego sin romper las reglas generales del juego y sin afectar los dominios y recorridos de las funciones base.
;En concreto, debe ser tratada igual que la función stackMode y emptyHandsMode.
;Dom: cardsSet
;Rec: cardsSet
;Recursion: Natural
;Ejemplo de uso:
(define (myMode cards)
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
