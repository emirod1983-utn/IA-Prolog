% Ejercicio 4
hombre(bart).
hombre(herbert).
hombre(homero).
hombre(abraham).
hombre(clancy).
mujer(lisa).
mujer(maggie).
mujer(ling).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(mona).
mujer(jacqueline).
padres(bart, marge, homero).
padres(lisa, marge, homero).
padres(maggie, marge, homero).
padres(ling, selma, _).
padres(herbert, abraham, mona).
padres(homero, abraham, mona).
padres(marge, clancy, jacqueline).
padres(patty, clancy, jacqueline).
padres(selma, clancy, jacqueline).

% Reglas
hermana(X,Y):-mujer(X),mujer(Y),padres(X,A,B),padres(Y,A,B),X\=Y.

nieto(X,Y):-hombre(X),padres(X,A,_),padres(A,Y,_).
nieto(X,Y):-hombre(X),padres(X,A,_),padres(A,_,Y).
nieto(X,Y):-hombre(X),padres(X,_,A),padres(A,Y,_).
nieto(X,Y):-hombre(X),padres(X,_,A),padres(A,_,Y).

abuelo(X,Y):-hombre(X),padres(Y,B,_),padres(B,X,_).
abuelo(X,Y):-hombre(X),padres(Y,_,B),padres(B,X,_).

tia(X,Y):-mujer(X),padres(X,A,B),padres(C,A,B),padres(Y,C,_).
tia(X,Y):-mujer(X),padres(X,A,B),padres(C,A,B),padres(Y,_,C).
