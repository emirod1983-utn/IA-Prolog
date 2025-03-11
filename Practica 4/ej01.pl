% Ejercicio 1
:-dynamic(gastos/3).
abrir:-
    writeln('Abriendo base..'),
    retractall(gastos(_,_,_)), % Limpiamos la memoria antes de cargar
    consult('C:/repos/IA-Prolog/Practica 4/ej01.txt').

guardar:-
    writeln('Gudardando en la base..'),
    tell('C:/repos/IA-Prolog/Practica 4/ej01.txt'),
    listing(gastos),
    told.

menu:-
    writeln('Ingrese una opcion:'),
    writeln('1. Cargar gastos'),
    writeln('2. Listar gastos con fail'),
    writeln('3. Listar gastos con retract'),
    writeln('4. Salir'),
    read(Opcion),
    Opcion\=4,
    opcion(Opcion),
    menu. % El menu es recursivo para 1 y 3. Para 2 va a guardar despues del fail.
menu:-guardar.

inicio:-
    abrir,
    menu.

opcion(1):-carga. % Agregar gasto a una persona
opcion(2):-lista_fail. % Consultar gastos de una persona
opcion(3):-lista_retract. % Listar gastos de una persona usando retract

carga:-
    write('Ingresa el nombre de la persona: '),
    read(Nombre),
    write('Ingresa el gasto: '),
    read(Gasto),
    write('Ingresa el monto: '),
    read(Monto),
    assert(gastos(Nombre,Gasto,Monto)),
    writeln('Gasto agregado.').

lista_fail:-
    write('Ingresa el nombre de la persona: '),
    read(Nombre),
    gastos(Nombre,Gasto,Monto),
    write('Gasto: '),write(Gasto),write('   '),
    write('Monto: '),writeln(Monto),
    fail.

lista_retract:-
    write('Ingrese el nombre de la persona: '),
    read(Nombre),
    listarGastos(Nombre).

listarGastos(Nombre):-
    gastos(Nombre,Gasto,Monto),
    write('Gasto: '),write(Gasto),write('   '),
    write('Monto: '),writeln(Monto),
    retract(gastos(Nombre,Gasto,Monto)),
    listarGastos(Nombre).
listarGastos(_):-
    abrir, % Volvemos a cargar la base para recuperar valores borrados.
    writeln('Fin de la busqueda.').












