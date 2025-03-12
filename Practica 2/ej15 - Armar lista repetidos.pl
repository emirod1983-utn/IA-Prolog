% Ejercicio 15 - Armar listas condicionalmente
inicio:-
    leer(Lista),
    repetidos(Lista,Repetidos),
    write('Los repetidos son: '),
    writeln(Lista_rep).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

pertenece(X,[X|_]).
pertenece(X,[_|T]):-pertenece(X,T).

repetidos([],[]).
% Si H1 pertenece lo "agrega", que en realidad es lo deja pendiente para agregarlo al regreso
% ya que sigue procesando el resto de la cola haciendo repetidos(T1,T2)
repetidos([H1|T1],[H1|T2]):-pertenece(H1,T1),repetidos(T1,T2).
repetidos([_|T],Repetidos):-repetidos(T,Repetidos).
