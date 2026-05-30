% Predicados cumple_requisitos/2, puntaje/3 y habilidades_faltantes/3.


% Verifica requisitos obligatorios
cumple_requisitos(CandId, VacId) :-
    candidato(CandId, _, Habs, Idiomas),
    vacante(VacId, Obligatorios, _),
    append(Habs, Idiomas, Todo),
    subset(Obligatorios, Todo).

% Calcula puntaje por interseccion de deseables
puntaje(CandId, VacId, Score) :-
    candidato(CandId, _, Habs, Idiomas),
    vacante(VacId, _, Deseables),
    append(Habs, Idiomas, Todo),
    intersection(Todo, Deseables, Comunes),
    length(Comunes, Score).

% Lista habilidades e idiomas faltantes
% Usa subtract/3 para obtener los requisitos obligatorios no cubiertos.
habilidades_faltantes(CandId, VacId, Faltantes) :-
    candidato(CandId, _, Habs, Idiomas),
    vacante(VacId, Obligatorios, _),
    append(Habs, Idiomas, Todo),
    subtract(Obligatorios, Todo, Faltantes).
