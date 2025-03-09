% Ejercicio 17
persona(juan,[madrid,paris,bruselas,amsterdam]).
persona(roque,[baradero,sanroque,sannicolas,zarate]).
persona(ana,[venado,firmat,casilda,chabas]).

inicio:-write('Ingrese nombre: '),
        read(Nombre),
        write('Ingrese ciudad: '),
        read(Ciudad),
        persona(Nombre,X),
        visito(Nombre,Ciudad,X).

visito(N,_,[]):-write(N), writeln(' no visito esa ciudad').
visito(N,C,[C|_]):-write(N),write(' visito '),writeln(C).
visito(N,C,[_|T]):-visito(N,C,T).
