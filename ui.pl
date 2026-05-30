% Menú interactivo para ingresar vacante y visualizar resultados.

% Punto de entrada al sistema
menu :-
    repeat,
    nl, write('=== SIMULADOR DE SELECCIÓN DE PERSONAL ==='), nl,
    write('1. Generar Reporte de Selección por Vacante'), nl,
    write('2. Buscar Vacantes Compatibles para un Candidato'), nl,
    write('3. Salir'), nl,
    write('Seleccione una opción: '),
    read(Opcion),
    ejecutar_opcion(Opcion),
    Opcion == 3, !.
    % El ciclo termina si la opción es 3

% Opción 1: Generar reporte
ejecutar_opcion(1) :-
    write('Ingrese el ID de la Vacante (ej. v01): '),
    read(VacId),
    (vacante(VacId, _, _) -> 
        reporte_seleccion(VacId) ; 
        write('Error: La vacante no existe.')), nl.

% Opción 2: Búsqueda inversa
ejecutar_opcion(2) :-
    write('Ingrese el ID del Candidato (ej. c01): '),
    read(CandId),
    (candidato(CandId, _, _, _) -> 
        vacantes_compatibles(CandId, Lista),
        format('El candidato ~w es apto para las vacantes: ~w~n', [CandId, Lista]) ;
        write('Error: El candidato no existe.')), nl.

% Opción 3: Salida
ejecutar_opcion(3) :-
    write('Saliendo del sistema...'), nl.

% Manejo de entradas inválidas
ejecutar_opcion(_) :-
    write('Opción no válida, intente de nuevo.'), nl.






