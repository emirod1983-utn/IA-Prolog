% Ejercicio 2
:-dynamic(persona/2).
abrir:-
    retractall(persona(_,_)),
    consult('C:/repos/IA-Prolog/Practica 4/ej02.txt').

guardar:-
    tell('C:/repos/IA-Prolog/Practica 4/ej02.txt'),
    listing(persona),
    told.

menu:-
    writeln('Ingrese una opcion: '),
    writeln('1. Buscar/Agregar persona'),
    writeln('2. Listar personas'),
    writeln('3. Salir'),
    read(Opcion),
    Opcion\=3,
    opcion(Opcion),
    menu.
menu:-guardar.

buscar_agregar(Codigo):-
    persona(Codigo,Nombre),
    write('El nombre de la persona es: '),
    writeln(Nombre).
buscar_agregar(Codigo):-
    write('No existe persona con codigo: '),
    writeln(Codigo),
    write('Ingrese el nombre de la persona a agregar: '),
    read(Nombre),
    assert(persona(Codigo,Nombre)),
    writeln('Persona agregada!').

opcion(1):-write('Ingrese el codigo de la persona: '),
    read(Codigo),
    buscar_agregar(Codigo).

opcion(2):-listing(persona).

inicio:-
    abrir,
    menu.

