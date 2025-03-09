% Ejercicio 9
inicio:-leer(Lista),
    promedio(Lista,Suma_total,Cant_elem),
    Prom  is Suma_total / Cant_elem,
    writeln(Suma_total),
    writeln(Cant_elem),
    write('El promedio es: '),
    writeln(Prom).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

promedio([],0,0).
promedio([H|T],Suma_total,Cant_elem):-
    promedio(T,Suma_acum,Cant_acum),
    Suma_total is Suma_acum + H,
    Cant_elem is Cant_acum + 1.
