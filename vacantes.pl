% Hechos vacante/3 con nombre del puesto, lista de requisitos obligatorios y lista de deseables.


% Formato: vacante(Id, RequisitosObligatorios, Deseables).

vacante(v01, [sql, git, espanol],
             [python, mongodb, rest_api, ingles]).
vacante(v02, [java, docker, espanol],
             [spring_boot, kubernetes, ingles]).

% v03: Analista de Datos Senior (Apto: c03, c09. c01 no es apto por falta de 'r')
vacante(v03, [python, r, sql], 
             [machine_learning, tableau, ingles, frances, mongodb]).

% v04: Desarrollador Backend Java (Apto: c02, c05, c08. c04 no es apto por falta de 'sql')
vacante(v04, [java, sql, git], 
             [spring_boot, docker, espanol, rest_api]).

% v05: Consultor T�cnico Junior (Alta competitividad, muchos candidatos aptos)
vacante(v05, [sql, espanol], 
             [python, java, git, rest_api, mongodb, ingles]).

% v06: Especialista en IA y Visualizaci�n (Apto: c06. c03 no es apto por falta de 'react')
vacante(v06, [python, machine_learning, react], 
             [tableau, mongodb, espanol, ingles, aleman]).

% v07: Fullstack Intermedio (Enfocado en c04 y c10 - incluye el typo 'sprint_boot' de tus hechos)
vacante(v07, [java, mongodb, sprint_boot], 
             [rest_api, ingles, sql, git, espanol]).

% v08: Desarrollador Cloud (Apto: c02, c05, c08 por tener 'docker' y 'git')
vacante(v08, [docker, git, espanol], 
             [java, sql, spring_boot, rest_api, python]).

% v09: Arquitecto de Soluciones (Muy exigente, pocos candidatos cumplen los obligatorios)
vacante(v09, [rest_api, mongodb, sql, ingles], 
             [python, java, git, spring_boot, docker, frances]).

% v10: Especialista en Integraci�n y Bases de Datos
% Apto para: c01, c07, c11 (cumplen con sql, rest_api e ingles).
% Descartados: c02, c05, c08 (aunque son expertos en SQL, les falta 'rest_api' e 'ingles').
vacante(v10, [sql, rest_api, ingles], 
              [python, mongodb, git, docker, java, espanol]).
