% Ejercicio 6
inicio:-write('Ingrese un numero: '),
        read(N),
        bin(N,B),
        write('En binario es: '),
        mostrar(B).

bin(0,[0]).
bin(N,[R|L]):- N1 is N//2, R is N mod 2, bin(N1,L).

mostrar([H|T]):-H\=[],mostrar(T), write(H).
mostrar([]).
