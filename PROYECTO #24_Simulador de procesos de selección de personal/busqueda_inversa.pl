% Predicado vacantes_compatibles/2: dado un candidato, lista vacantes aptas.

% vacantes_compatibles(CandId, ListaVacantes)
% Busqueda inversa: lista las vacantes cuyos requisitos obligatorios se
% cumplen.
vacantes_compatibles(CandId, ListaVacantes) :-
    findall(VacId, cumple_requisitos(CandId, VacId), ListaVacantes).
