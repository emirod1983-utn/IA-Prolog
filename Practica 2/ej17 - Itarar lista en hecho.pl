% Ejercicio 17
persona(juan,[madrid,paris,bruselas,amsterdam]).
persona(roque,[baradero,sanroque,sannicolas,zarate]).
persona(ana,[venado,firmat,casilda,chabas]).

inicio:-write('Ingrese nombre: '),
        read(Nombre),
        write('Ingrese ciudad: '),
        read(Ciudad),
        persona(Nombre,Ciudades),
        visito(Nombre,Ciudad,Ciudades).

visito(Nombre,_,[]):-write(Nombre), writeln(' no visito esa ciudad').
visito(Nombre,Ciudad,[Ciudad|_]):-write(Nombre),write(' visito '),writeln(Ciudad).
visito(Nombre,Ciudad,[_|T]):-visito(Nombre,Ciudad,T).
