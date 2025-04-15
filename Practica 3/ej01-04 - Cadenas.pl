inicio:-writeln('Ingrese un texto: '),
    read(Cadena),
    write('El primer caracter es: '),
    primer_caracter(Cadena,Prim_car),writeln(Prim_car),
    write('El ultimo caracter es: '),
    ultimo_caracter(Cadena,Ult_car),writeln(Ult_car),
    write('Cantidad de caracteres: '),
    cant_caracteres(Cadena,Cant),writeln(Cant),
    write('Cadena convertida a lista: '),
    cad_a_lista(Cadena,Lista),write(Lista).

% sub_atom(Cadena,ComienzoCad,CantidadCaracteres,CantidadCaracteresRestantes,SubCadena)

% Ejercicio 1
primer_caracter(Cadena,Prim_car):-sub_atom(Cadena,0,1,_,Prim_car).

% Ejercicio 2
ultimo_caracter(Cadena,Car):-sub_atom(Cadena,_,1,0,Car).

% Ejercicio 3
% Resolucion usando atom_length
% cant_caracteres(Cadena,Long):-atom_length(Cadena,Long).

% Resolucion usando sub_atom
% cant_caracteres(Cadena,Long):-sub_atom(Cadena,0,Long,0,_),

% Resolucion sin usar atom_length recursivamente
cant_caracteres('',0).
cant_caracteres(Cadena,Cant):-sub_atom(Cadena,1,_,0,Sub),
    cant_caracteres(Sub,CantSub),
    Cant is CantSub + 1.

% Ejercicio 4
cad_a_lista('',[]).
cad_a_lista(Cadena,[H|T]):-sub_atom(Cadena,0,1,_,H),
    sub_atom(Cadena,1,_,0,SubCadena),
    cad_a_lista(SubCadena,T).



