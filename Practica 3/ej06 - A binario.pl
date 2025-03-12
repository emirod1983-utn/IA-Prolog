% Ejercicio 6
inicio:-write('Ingrese un numero: '),
        read(N),
        bin(N,B),
        write('En binario es: '),
        mostrar(B).

% Guarda el binario invertido en una lista. 
bin(0,[0]).
bin(N,[R|L]):- N1 is N//2, R is N mod 2, bin(N1,L).

% Lo escribe de atras para adelante.
mostrar([H|T]):-H\=[],mostrar(T),write(H).
mostrar([]).
