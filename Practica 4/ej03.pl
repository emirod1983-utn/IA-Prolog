% Ejercicio 3
:-dynamic(animal/5).
abrir:-
    retractall(animal(_,_,_,_,_)),
    consult('C:/repos/IA-Prolog/Practica 4/ej03.txt').

guardar:-
    tell('C:/repos/IA-Prolog/Practica 4/ej03.txt'),
    listing(animal),
    told.

menu:-writeln('Ingrese una opcion'),
    writeln('1. Reporte de animal'),
    writeln('2. Reporte de habito'),
    writeln('3. Salir'),
    read(Opcion),
    Opcion\=3,
    opcion(Opcion),
    menu.
menu:-guardar.

% Ingresar el nombre de un animal e informar de todos sus hábitos.
opcion(1):-write('Ingrese el nombre del animal: '),
    read(Nombre),
    animal(Nombre,
           alimentacion(Alimento,CantAlim),
           bebida(Bebida,CantBeb),
           reproduccion(Epoca,Periodo),
           HsSueno),
    write('Alimento: '),writeln(Alimento),
    write('Cantidad de alimento: '),writeln(CantAlim),
    write('Bebida: '),writeln(Bebida),
    write('Cantidad de bebida: '),writeln(CantBeb),
    write('Epoca reproduccion: '),writeln(Epoca),
    write('Periodo de gestacion: '),writeln(Periodo),
    write('Horas de sueno: '),writeln(HsSueno).

% TODO: Ingresar un hábito e informar todos los animales que lo tienen.
opcion(2):-write('Ingrese el habito: '),
    read(Habito),
    writeln(Habito).

inicio:-
    abrir,
    menu.
