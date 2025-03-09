% Ejercicio 3
grupo(a,brasil).
grupo(a,espana).
grupo(a,jamaica).
grupo(a,italia).
grupo(b,argentina).
grupo(b,escocia).
grupo(b,holanda).
grupo(b,nigeria).

son_rivales(X,Y):-grupo(Z,X),grupo(Z,Y),X\=Y.

% Consultas
% son_rivales(argentina,brasil).
% son_rivales(holanda,Quien).
