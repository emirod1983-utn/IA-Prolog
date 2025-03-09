% Ejercicio 11
factorial(0,1).
factorial(N,F):-
    Ant is N-1,
    factorial(Ant,FA),
    F is N*FA.
