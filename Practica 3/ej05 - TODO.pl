% Ejercicio 5
% Transformar una cadena de texto en una lista de palabras, tomando
% como divisor el espacio.

inicio:-leer(Cadena),write(Cadena).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% TO DO
