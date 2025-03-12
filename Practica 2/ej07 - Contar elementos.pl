% Ejercicio 7
inicio:-
    leer(Lista),
    contar(Lista,Cant),
    write('La cantidad de elementos es: '),
    writeln(Cant).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

contar([],0).
contar([_|T],Cant):-
    contar(T,CantParc),
    Cant is CantParc + 1.
