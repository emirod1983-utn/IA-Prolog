% Ejercicio 14
inicio:-leer(Lista),primer_repetido(Lista).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% Validar si la cabeza pertenece a la cola
% sino paso a la siguiente cabeza

pertenece(X,[X|_]).
pertenece(X,[_|T]):-pertenece(X,T).

primer_repetido([H|T]):-pertenece(H,T),write("El primer repetido es: "),write(H).
primer_repetido([_|T]):-primer_repetido(T).
primer_repetido([]):-writeln("No hay valores repetidos en esta lista").

