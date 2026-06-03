% Menu interactivo para ingresar vacante y visualizar resultados.

% Punto de entrada al sistema
menu :-
    repeat,
    nl, write('=== SIMULADOR DE SELECCION DE PERSONAL ==='), nl,
    write('1. Generar Reporte de Seleccion por Vacante'), nl,
    write('2. Buscar Vacantes Compatibles para un Candidato'), nl,
    write('3. Salir'), nl,
    write('Seleccione una opcion: '),
    read(Opcion),
    ejecutar_opcion(Opcion),
    Opcion == 3, !.
    % El ciclo termina si la opcion es 3

% Opcion 1: Generar reporte
ejecutar_opcion(1) :-
    write('Ingrese el ID de la Vacante (ej. v01): '),
    read(VacId),
    (vacante(VacId, _, _) -> 
        reporte_seleccion(VacId) ; 
        write('Error: La vacante no existe.')), nl.

% Opcion 2: Busqueda inversa
ejecutar_opcion(2) :-
    write('Ingrese el ID del Candidato (ej. c01): '),
    read(CandId),
    (candidato(CandId, _, _, _) -> 
        vacantes_compatibles(CandId, Lista),
        format('El candidato ~w es apto para las vacantes: ~w~n', [CandId, Lista]) ;
        write('Error: El candidato no existe.')), nl.

% Opcion 3: Salida
ejecutar_opcion(3) :-
    write('Saliendo del sistema...'), nl.

% Manejo de entradas invalidas
ejecutar_opcion(_) :-
    write('Opcion no valida, intente de nuevo.'), nl.






