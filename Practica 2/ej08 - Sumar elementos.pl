% Ejercicio 8
inicio:-
    leer(Lista),
    sumar(Lista,Suma_total),
    write('El resultado de la suma es: '),
    writeln(Suma_total).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

sumar([],0).
sumar(([H|T]),Suma_total):-sumar(T,Suma_acum),Suma_total is H + Suma_acum.
