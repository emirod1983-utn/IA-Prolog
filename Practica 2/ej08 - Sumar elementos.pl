% Ejercicio 8
inicio:-
    leer(Lista),
    sumar(Lista,Suma),
    write('El resultado de la suma es: '),
    writeln(Suma).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

sumar([],0).
sumar(([H|T]),Suma):-
    sumar(T,SumaParc),
    Suma is SumaParc + H.
