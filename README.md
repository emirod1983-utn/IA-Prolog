# IA-Prolog

## Introducción

Resolución de ejercicios y exámenes finales de la materia Inteligencia Artificial, correspondiente a la UTN Facultad Regional Rosario.

## Nota Importante

En algunos ejercicios uso un patron en donde hago lo siguiente

```prolog
abrir:-...

menu:-...,
      ....
menu.

inicio:-abrir, menu.
```

La profesora me lo corrigió como un error, argumentando que debería hacerlo de la siguiente manera.

```prolog
abrir:-...

menu:-abrir,
      ...,
      ....
menu.
```

## Comandos utiles

Mostrar el directorio sobre el que se esta trabajando

```prolog
working_directory(Dir,Dir).
```

Modificar el directorio sobre el que se esta trabajando

```prolog
working_directory(CWD,'C:/path/to/folder').
```

De esta manera se pueden abrir bases de datos usando paths relativos de la siguiente manera

```prolog
consult('./folder/filename.txt').
```
