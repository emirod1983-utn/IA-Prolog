:-dynamic(pelicula/7).
abrir:-
    writeln('Abriendo base...'),
    retractall(pelicula(_,_,_,_,_,_,_)),
    consult('./Finales/20250312Peliculas/peliculas.txt').

guardar:-
    writeln('Guardando en la base..'),
    tell('./Finales/20250312Peliculas/peliculas.txt'),
    listing(peliculas),
    told.

menu:-
    writeln('Ingrese una opcion'),
    writeln('1. Ingresar actor y mostrar sus peliculas'),
    writeln('2. Ingresar peliculas y mostrar aquellas con dos o mas directores'),
    writeln('3. Ingresar peliculas y mostrar aquellas con dos o mas directores (lista condicional)')
    writeln('0. Salir'),
    read(Op),
    Op\=0,
    opcion(Op),
    menu.
menu.

inicio:-
    abrir,
    menu.

% Ejercicio 1
pertenece([H|_],H).
pertenece([_|T],C):-pertenece(T,C).

peliculas_por_actor(Actor):-
    pelicula(Pelicula,_,_,Actores,_,_,_),
    retract(pelicula(Pelicula,_,_,Actores,_,_,_)),
    pertenece(Actores,Actor),
    write('Pelicula: '),
    writeln(Pelicula),
    peliculas_por_actor(Actor).

peliculas_por_actor(_):-
    abrir.

% Ejercicio 2
leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

contar([],0).
contar([_|T],Total):-
    contar(T,TotalParc),
    Total is TotalParc + 1.

multiples_directores(Nombre):-
    pelicula(Nombre,_,Directores,_,_,_,_),
    retract(pelicula(Nombre,_,Directores,_,_,_,_)),
    contar(Directores,Total),
    Total>1,
    writeln(Nombre).
multiples_directores(_).

filtrar_peliculas([]).
filtrar_peliculas([H|T]):-
    multiples_directores(H),
    filtrar_peliculas(T).

% Ejercicio 2 creando una lista condicionalmente
pelis_directores([],[]).
pelis_directores([H1|T1],[H1|T2]):-
    pelicula(H1,_,Directores,_,_,_,_),
    contar(Directores,Cantidad),
    Cantidad > 1,
    pelis_directores(T1,T2).
pelis_directores([_|T1],Filtradas):-
    pelis_directores(T1,Filtradas).

% Opciones
opcion(1):-
    writeln('Ingrese el nombre de un actor: '),
    read(Actor),
    write('Peliculas en las que trabajo '),
    writeln(Actor),
    peliculas_por_actor(Actor).

opcion(2):-writeln('Ingrese una lista de peliculas'),
    leer(Peliculas),
    writeln('Peliculas de la lista que fueron dirigidas por al menos 2 directores'),
    filtrar_peliculas(Peliculas).

opcion(3):-writeln("Ingrese una lista de peliculas"),
    leer(Peliculas),
    pelis_directores(Peliculas,PelisFiltradas),
    writeln('Peliculas de la lista que fueron dirigidas por al menos 2 directores'),
    writeln(PelisFiltradas).







