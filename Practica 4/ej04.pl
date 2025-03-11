% Ejercicio 4
:-dynamic(gastos/2).
abrir:-
    retractall(gastos(_,_)),
    consult('C:/repos/IA-Prolog/Practica 4/ej04.txt').

guardar:-
    tell('C:/repos/IA-Prolog/Practica 4/ej04.txt'),
    listing(gastos),
    told.

menu:-
    writeln('Elija una opcion'),
    writeln('1. Cargar gasto'),
    writeln('2. Buscar por gasto'),
    writeln('3. Listar gastos mayores a 150'),
    writeln('4. Promedio por persona'),
    writeln('5. Salir'),
    read(Opcion),
    Opcion\=5,
    opcion(Opcion),
    menu.
menu:-guardar.

reporte_gasto(Gasto):-
    gastos(Nombre,gasto(Gasto,Monto)),
    write(Nombre),write(' - '),writeln(Monto),
    retract(gastos(Nombre,gasto(Gasto,Monto))),
    reporte_gasto(Gasto).
reporte_gasto(_):-
    abrir.

gastos_mayores(Gasto):-
    gastos(Nombre,gasto(Gasto,Monto)),
    Monto > 150,
    writeln(Nombre),
    retract(gastos(Nombre,gasto(Gasto,Monto))),
    gastos_mayores(Gasto).
gastos_mayores(Gasto):-
    gastos(Nombre,gasto(Gasto,Monto)),
    Monto < 150,
    retract(gastos(Nombre,gasto(Gasto,Monto))),
    gastos_mayores(Gasto).
gastos_mayores(_):-
    abrir.

promedio(Persona,Suma,Total):-
    gastos(Persona,gasto(_,Monto)),
    retract(gastos(Persona,gasto(_,Monto))),
    promedio(Persona,SumaAcum,TotalAcum),
    Suma is SumaAcum + Monto,
    Total is TotalAcum + 1.
promedio(_,0,0):-
    abrir.

opcion(1):-
    write('Ingrese nombre: '),
    read(Nombre),
    write('Ingrese gasto: '),
    read(Gasto),
    write('Ingrese monto: '),
    read(Monto),
    assert(gastos(Nombre,gasto(Gasto,Monto))),
    guardar.

opcion(2):-
    write('Ingrese el gasto a buscar: '),
    read(Gasto),
    reporte_gasto(Gasto).

opcion(3):-
    write('Ingrese el gasto a buscar: '),
    read(Gasto),
    gastos_mayores(Gasto).

opcion(4):-
    write('Ingrese persona sobre la cual calcular el promedio: '),
    read(Persona),
    promedio(Persona,Suma,Cantidad),
    Promedio is Suma / Cantidad,
    write('El promedio es: '),
    writeln(Promedio).

inicio:-
    abrir,
    menu.
