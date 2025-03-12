% Ejercicio 11
inicio:-leer(Lista),
    mayor_hacia_adelante(Lista,0,Mayor),
    write('Calculo del mayor con la forma A: '),
    writeln(Mayor),
    write('Calculo del mayor con la forma B: '),
    mayor(Lista,May),
    writeln(May).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% Resolucion haciendo algoritmo hacia adelante
% La validacion ocurre antes de la recursividad
mayor_hacia_adelante([],Max,Max).
mayor_hacia_adelante([H|T],MaxParc,Max):-
    H>=MaxParc,
    mayor_hacia_adelante(T,H,Max).
mayor_hacia_adelante([_|T],MaxParc,Max):-
    mayor_hacia_adelante(T,MaxParc,Max).

% Resolucion recomendada
% Armarmos una pila con todos los elementos y validamos luego de la recursividad.
mayor([H],H).
mayor([H|T],H):-mayor(T,MaxParc),H > MaxParc. % Cuando el mayor es H, devolvemos H
mayor([H|T],MaxParc):-mayor(T,MaxParc), H =< MaxParc. % Cuando el mayor es MaxParc, devolvemos ese.



