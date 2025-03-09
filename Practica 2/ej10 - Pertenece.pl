% Ejercicio 10
inicio:-
    writeln('Ingrese una lista: '),
    leer(Lista),
    write('La lista es: '),
    writeln(Lista),
    read(C),
    pertenece(Lista,C).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

pertenece([],C):-write(C), writeln(' no pertenece a la lista.').
pertenece([C|_],C):-write(C),writeln(' pertenece a la lista.').
pertenece([_|T],C):-pertenece(T,C).

