% Ejercicio 1
inicio:-writeln('Ingrese una lista: '),
    leer(Lista),
    writeln(Lista),
    mostrar(Lista),
    mostrar_cabeza(Lista),
    mostrar_top2(Lista),
    mostrar_ultimo(Lista).

leer([H|T]):- read(H), H\=[], leer(T).
leer([]).

% Ejercicio 2
mostrar([H|T]):-write('Cabeza de la lista -> '),
    writeln(H),
    write('Cola de la lista -> '),
    writeln(T).

% Ejercicio 3
mostrar_cabeza([H|_]):-write('Cabeza de la lista -> '),writeln(H).

% Ejercicio 4
mostrar_top2([H|T]):-write('Primer elemento: '), writeln(H),mostrar_2do(T).
mostrar_2do([H|_]):-write('Segundo elemento: '), writeln(H).

% Ejercicio 5
mostrar_ultimo([H|[]]):-write('Ultimo elemento de la lista: '),writeln(H).
mostrar_ultimo([_|T]):-mostrar_ultimo(T).
