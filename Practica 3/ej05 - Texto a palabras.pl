% Transformar una cadena de texto en una lista de palabras,
% tomando como divisor el espacio.
% Hecho con ChatGPT, puede contener errores.

inicio:-cad_a_palabras('Hola mundo PROLOG',Lista),writeln(Lista).

cad_a_palabras('', []).
cad_a_palabras(Cadena, [Palabra|Resto]) :-
    sub_atom(Cadena, 0, 1, _, ' '), % Si encuentra espacio al inicio, lo ignora
    sub_atom(Cadena, 1, _, 0, SubCadena),
    cad_a_palabras(SubCadena, [Palabra|Resto]).

cad_a_palabras(Cadena, [Palabra|Resto]) :-
    (sub_atom(Cadena, Before, 1, _, ' ')), % Si encuentra un espacio en la cadena
    Before > 0,                           % Asegura que no est� al principio
    sub_atom(Cadena, 0, Before, _, Palabra), % Extrae la palabra antes del espacio
    After is Before + 1,
    sub_atom(Cadena, After, _, 0, SubCadena),% Toma subcadena desp del espacio
    cad_a_palabras(SubCadena, Resto).
cad_a_palabras(Cadena, [Cadena]).         % Caso final: una palabra sin espacios
