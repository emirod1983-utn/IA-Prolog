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
mayor_hacia_adelante([H|T],Max_parc,Max):-H>=Max_parc,mayor_hacia_adelante(T,H,Max).
mayor_hacia_adelante([_|T],Max_parc,Max):-mayor_hacia_adelante(T,Max_parc,Max).

% Resolucion haciendo la recursividad de la forma alternativa
% Armarmos una pila con todos los elementos y validamos luego de la
% recursividad.
mayor([H],H).
% Cuando el mayor es H, devolvemos H
mayor([H|T],H):-mayor(T,Mayor_parc),H > Mayor_parc.
% Cuando el mayor es el Mayor_parc, devolvemos ese.
mayor([H|T],Mayor_parc):-mayor(T,Mayor_parc), H =< Mayor_parc.



