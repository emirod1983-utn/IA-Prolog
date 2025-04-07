# IA-Prolog

## Introducción

Resolución de ejercicios y finales de la materia Inteligencia Artificial perteneciente a la facultad UTN Rosario

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
