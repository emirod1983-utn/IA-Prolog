:-dynamic(destinosTuristicos/4).

abrir:-writeln('Abriendo base..'),
    retractall(destinosTuristicos(_,_,_,_)),
    consult('./destinos_turisticos.txt').

guardar:-writeln('Guardando..'),
    tell('./destinos_turisticos.txt'),
    listing(destinosTuristicos),
    told.

menu:-writeln('Elige una opcion'),
    writeln('1. Destinos por comida, actividad deportiva y distancia'),
    writeln('2. Destinos por actividades deportivas'),
    writeln('0. Salir'),
    read(Opcion),
    Opcion\=0,
    opcion(Opcion),
    menu.
menu:-guardar.

inicio:-abrir,menu.

pertenece([H|_],H).
pertenece([_|T],C):-pertenece(T,C).

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

% Ejercicio 1
destinos_filtros(Comida,Actividad,DistMax):-
    destinosTuristicos(Nombre,Distancia,Actividades,Comidas),
    retract(destinosTuristicos(Nombre,Distancia,Actividades,Comidas)),
    pertenece(Actividades,Actividad),
    pertenece(Comidas,Comida),
    Distancia<DistMax,
    writeln(Nombre),
    destinos_filtros(Comida,Actividad,DistMax).
destinos_filtros(_,_,_):-writeln(''),abrir.

% Ejercicio 2
todas_pertenecen(_,[]).
todas_pertenecen(Actividades,[H1|T1]):-
    pertenece(Actividades,H1),
    todas_pertenecen(Actividades,T1).

destinos_actividades(ActividadesBuscadas):-
    destinosTuristicos(Nombre,_,Actividades,_),
    retract(destinosTuristicos(Nombre,_,Actividades,_)),
    todas_pertenecen(Actividades,ActividadesBuscadas),
    writeln(Nombre),
    destinos_actividades(ActividadesBuscadas).
destinos_actividades(_):-abrir.

% Opciones
opcion(1):-
    writeln('Ingrese una comida'),
    read(Comida),
    writeln('Ingrese una actividad deportiva'),
    read(Actividad),
    writeln('Ingrese la distancia maxima'),
    read(DistMax),
    writeln('Destinos encontrados:'),
    destinos_filtros(Comida,Actividad,DistMax).

opcion(2):-
    writeln('Ingresar una lista de actividades deportivas'),
    leer(ActividadesBuscadas),
    ActividadesBuscadas\=[],
    writeln('Destinos que contienen las actividades ingresadas'),
    destinos_actividades(ActividadesBuscadas).
