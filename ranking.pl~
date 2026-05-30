% Predicado generar_ranking/2 que filtra, punt�a y ordena la lista de candidatos.

% Genera ranking de candidatos aptos para una vacante
generar_ranking(VacId, Ranking) :-
    findall(Score-CandId,
            (cumple_requisitos(CandId, VacId),
             puntaje(CandId, VacId, Score)),
            Pares),
    msort(Pares, Asc),
    reverse(Asc, Ranking).