:-dynamic(vacuna/2).
:-dynamic(infante/3).

abrir:-writeln('Abriendo base de datos..'),
    retractall(vacuna(_,_)),
    retractall(infante(_,_,_)),
    consult('./vacunas.txt').

guardar:-
    tell('./vacunas.txt'),
    listing(vacuna),
    listing(infante),
    told.

menu:-writeln('Ingrese una opcion'),
    writeln('1. Promedio de edad de niños vacunados por vacuna dada'),
    writeln('2. Vacuntas contra enfermedad'),
    writeln('0. Salir'),
    read(Op),
    Op\=0,
    opcion(Op),
    menu.
menu:-guardar.

inicio:-abrir,menu.

pertenece([H|_],H).
pertenece([_|T],C):-pertenece(T,C).

% Ejercicio 1
vacunados(Vacuna,[Edad|T]):-
    infante(_,Edad,Vacunas),
    retract(infante(_,Edad,Vacunas)),
    pertenece(Vacunas,Vacuna),
    vacunados(Vacuna,T).
vacunados(_,[]):-abrir.

promedio([],0,0).
promedio([H|T],Suma,Cant):-
    promedio(T,SumaParc,CantParc),
    Suma is SumaParc+H,
    Cant is CantParc+1.

% Ejercicio 2
enfermedad_vacunas(Enfermedad):-
    vacuna(Nombre,Enfermedades),
    retract(vacuna(Nombre,Enfermedades)),
    pertenece(Enfermedades,Enfermedad),
    write('Vacuna: '),writeln(Nombre),
    enfermedad_vacunas(Enfermedad).
enfermedad_vacunas(_):-abrir.

% Opciones
opcion(1):-writeln('Ingrese una vacuna'),
    read(Vacuna),
    vacunados(Vacuna,Vacunados),
    promedio(Vacunados,Edades,Cantidad),
    Promedio is Edades / Cantidad,
    write('El promedio de edad es: '),writeln(Promedio).

opcion(2):-writeln('Ingrese una enfermedad'),
    read(Enfermedad),
    writeln('Vacunas que combaten la enfermedad'),
    enfermedad_vacunas(Enfermedad).

