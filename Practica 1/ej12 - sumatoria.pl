% Ejercicio 12
sumatoria(0,0).
sumatoria(N,F):-
    Ant is N-1,
    sumatoria(Ant,FA),
    F is N+FA.
