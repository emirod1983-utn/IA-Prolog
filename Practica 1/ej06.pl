% Ejercicio 6
musico(carolina,guitarrista,rosario).
musico(jose,guitarrista,rosario).
musico(miguel,guitarrista,funes).
musico(mariano,cantante,rosario).
musico(silvia,cantante,funes).
musico(eduardo,baterista,roldan).
musico(diego,baterista,casilda).
musico(laura,baterista,rosario).
musico(mauro,cantante,funes).

tiene_banda(X):-musico(_,guitarrista,X),musico(_,cantante,X),musico(_,baterista,X).

% TODO: En este ejercicio prefieren que:
% a. separemos los hechos en instrumento y ciudad
% b. validemos que la persona sea diferente con A\=B
