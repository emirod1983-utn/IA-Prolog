% Ejercicio 7
menu:-writeln('Ingrese el primer numero: '),read(N1),
      writeln('Ingrese el segungo numero: '),read(N2),
      writeln('Que operacion desea realizar?'),
      writeln('1 - Suma'),
      writeln('2 - Resta'),
      writeln('3 - Multiplication'),
      writeln('4 - Division'),
      read(Opc),
      Opc\=5,
      opcion(Opc,N1,N2),
      menu.
menu:-writeln('Adios').

opcion(1,N1,N2):-Suma is N1+N2,writeln('Resultado de la suma: '),writeln(Suma).
opcion(2,N1,N2):-Resta is N1-N2,writeln('Resultado de la resta: '),writeln(Resta).
opcion(3,N1,N2):-Mult is N1*N2,writeln('Resultado de la multiplicacion: '),writeln(Mult).
opcion(4,N1,N2):-Div is N1/N2,writeln('Resultado de la division '),writeln(Div).
opcion(_,_,_):-writeln('Opcion invalida.').

