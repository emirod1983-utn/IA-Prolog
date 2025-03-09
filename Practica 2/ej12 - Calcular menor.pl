% Ejercicio 12
inicio:-leer(Lista),
    write('Calculo del menor: '),
    menor(Lista,Menor),
    writeln(Menor).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% Busqueda
menor([H],H).
% Cuando el mayor es H, devolvemos H
menor([H|T],H):-menor(T,Menor_parc),H < Menor_parc.
% Cuando el mayor es el Mayor_parc, devolvemos ese.
menor([H|T],Menor_parc):-menor(T,Menor_parc), H > Menor_parc.

