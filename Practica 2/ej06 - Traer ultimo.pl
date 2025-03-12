% Ejercicio 6
inicio:-
    write('Ingrese una lista: '),
    leer([H|T]),
    traer_ultimo([H|T],U),
    Dif is H - U,
    write('La diferencia entre el primer y ultimo elemento es: '),
    writeln(Dif).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% [H] es equivalente a [H|[]]
traer_ultimo([H],H).
traer_ultimo([_|T],U):-traer_ultimo(T,U).
