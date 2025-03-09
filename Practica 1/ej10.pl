% Ejercicio 10
requiere(j,h).
requiere(h,e).
requiere(j,i).
requiere(i,e).
requiere(j,g).
requiere(g,f).
requiere(e,d).
requiere(d,c).
requiere(c,a).
requiere(d,b).
requiere(f,b).

requiere_de(X,Y):-requiere(X,Y).
requiere_de(X,Y):-requiere(X,Z),requiere_de(Z,Y).
