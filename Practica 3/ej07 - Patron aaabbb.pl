% Ejercicio 7 - Es un intento que no funciona, pero esta cerca.

inicio:-writeln('Ingrese una palabra de la forma a..ab..b: '),
    read(Pal),
    verificar(Pal).

verificar(Pal):-
    contar(Pal,'a',C1),
    atom_length(Pal,Long),
    V is (Long-C1),
    V>0,
    sub_atom(Pal,C1,V,_,Pal1),
    contar(Pal1,'b',C2),
    C1=C2,
    Cto is C1+C2,
    Long = Cto,
    write('Es correcta').
verificar(_):-write('Es incorrecta.').

contar(Pal,LetraBuscada,CantRepet):-
    atom_length(Pal,Long),
    Long>1,
    sub_atom(Pal,0,1,_,LetraActual),
    LetraActual=LetraBuscada,
    P is Long - 1,
    sub_atom(Pal,1,P,_,X1),
    contar(X1,LetraBuscada,CantRepetParc),
    CantRepet is CantRepetParc + 1.
contar(Pal,LetraBuscada,1):-
    atom_length(Pal,K),
    K = 1,
    Pal = LetraBuscada,
    contar(_,_,0).

