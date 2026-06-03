% Este reporte divide los resultados en dos secciones principales: los
% candidatos aptos (con su puntaje) y los candidatos descartados (con su
% justificacion).


% Predicado reporte_seleccion/1 que presenta aptos, descartados y raz�n.
% Este predicado presenta la lista de candidatos aptos con puntaje y la
% lista de descartados con razon detallada.

reporte_seleccion(VacId) :-
    vacante(VacId, _, _),
    format('~n--- REPORTE DE SELECCION: ~w ---~n', [VacId]),

    % Parte 1: Candidatos Aptos
    format('~nCANDIDATOS RECOMENDADOS (Ordenados por puntaje):~n'),
    generar_ranking(VacId, Ranking),
    mostrar_aptos(Ranking),

    % Parte 2: Candidatos Descartados
    format('~nCANDIDATOS NO APTOS (Con razon de descarte):~n'),
    mostrar_descartados(VacId),
    format('~n--- Fin del Reporte ---~n').


% Sub predicado para que recorre la lista de pares Puntaje-Id generada
% por el modulo de ranking y muestra los candidatos aptos con su
% puntaje. Caso base: cuando la lista esta vacia
mostrar_aptos([]).
% Caso recursivo: imprime el nombre y el puntaje
mostrar_aptos([Score-CandId | Resto]) :-
    candidato(CandId, Nombre, _, _),
    format('- ~w (~w): Puntaje de compatibilidad: ~w~n', [Nombre, CandId, Score]),
    mostrar_aptos(Resto).

% Sub predicado donde se aplica la logica de habilidades_faltantes/3 y
% la operacion subtract/3 para explicar por que no fueron
% seleccionados. Identifica y justifica a quienes no cumplieron los
% obligatorios
mostrar_descartados(VacId) :-
    findall(CandId, (candidato(CandId, _, _, _), \+ cumple_requisitos(CandId, VacId)), Descartados),
    imprimir_motivos(VacId, Descartados).

% Sub sub predicado que devuelve la lista de habilidades faltantes para
% un candidato especifico en relacion con una vacante dada.
imprimir_motivos(_, []).
imprimir_motivos(VacId, [CandId | Resto]) :-
    candidato(CandId, Nombre, _, _),
    habilidades_faltantes(CandId, VacId, Faltantes),
    format('- ~w (~w): No cumple con: ~w~n', [Nombre, CandId, Faltantes]),
    imprimir_motivos(VacId, Resto).
