% Ejercicio 9
inicio:-leer(Lista),
    promedio(Lista,Suma,Cant),
    Prom  is Suma / Cant,
    write('El promedio es: '),writeln(Prom).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

promedio([],0,0).
promedio([H|T],Suma,Cant):-
    promedio(T,SumaParc,CantParc),
    Suma is SumaParc + H,
    Cant is CantParc + 1.
