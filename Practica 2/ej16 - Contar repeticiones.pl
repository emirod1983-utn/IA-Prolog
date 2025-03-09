% Ejercicio 16 - Contar repeticiones de un elemento en una lista
inicio:-
    writeln('Ingrese una lista'),
    leer(Lista),
    writeln('Ingrese un elemento a encontrar'),
    read(Elem),
    repeticiones(Lista,Elem,Cant),
    write('El elemento aparece '),
    write(Cant),
    writeln(' veces.').

leer([H|T]):-read(H),H\=[],leer(T).
leer([]).

repeticiones([],_,0).
repeticiones([Elem|T],Elem,Cant):-repeticiones(T,Elem,Cant_parc),Cant is Cant_parc + 1.
repeticiones([_|T],Elem,Cant):-repeticiones(T,Elem,Cant).









