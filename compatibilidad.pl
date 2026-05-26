% Predicados cumple_requisitos/2, puntaje/3 y habilidades_faltantes/3.


% Verifica requisitos obligatorios
cumple_requisitos(CandId, VacId) :-
    candidato(CandId, _, Habs, Idiomas),
    vacante(VacId, Obligatorios, _),
    append(Habs, Idiomas, Todo),
    subset(Obligatorios, Todo).
