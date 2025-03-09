% Ejercicio 13
% Caso base: cuando llegamos a 0, las sumas acumuladas se asignan al
% resultado.
suma(0, SumPares, SumImpares, SumPares, SumImpares).

% Caso recursivo: si N es par, sumarlo a la suma de pares.
suma(N, AcumPares, AcumImpares, SumPares, SumImpares) :-
    N > 0,
    N mod 2 =:= 0,
    NuevoAcumPares is AcumPares + N,
    NuevoAcumImpares = AcumImpares, % Los impares no cambian.
    N1 is N - 1,
    suma(N1, NuevoAcumPares, NuevoAcumImpares, SumPares, SumImpares).

% Caso recursivo: si N es impar, sumarlo a la suma de impares.
suma(N, AcumPares, AcumImpares, SumPares, SumImpares) :-
    N > 0,
    N mod 2 =:= 1,
    NuevoAcumImpares is AcumImpares + N,
    NuevoAcumPares = AcumPares, % Los pares no cambian.
    N1 is N - 1,
    suma(N1, NuevoAcumPares, NuevoAcumImpares, SumPares, SumImpares).

% Predicado principal: inicializa los acumuladores en 0.
suma(N, SumPares, SumImpares) :-
    suma(N, 0, 0, SumPares, SumImpares).

