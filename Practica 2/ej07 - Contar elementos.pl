% Ejercicio 7
inicio:-leer(Lista),
    contar(Lista,Cant),
    write('La cantidad de elementos es: '),
    writeln(Cant).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

contar([],0).
contar([_|T],Cant):-contar(T,Cant_cola),Cant is Cant_cola + 1.
