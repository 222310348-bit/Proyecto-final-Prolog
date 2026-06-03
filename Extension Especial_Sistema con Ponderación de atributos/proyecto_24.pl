% PROYECTO #24: SIMULADOR DE SELECCION DE PERSONAL

% Integrantes:
% - Asorga Esquivel Luis Alberto 222310304
% - Hernandez Cordero Brian Alejandro 222310645
% - Lozano Chairez Edson Francisco 222310348

% Base de Conocimiento
:- consult('candidatos.pl').
:- consult('vacantes.pl').

% Motor de Inferencia y Funciones L�gicas
:- consult('compatibilidad.pl').
:- consult('ranking.pl').
:- consult('busqueda_inversa.pl').

% Generacion de Reporte
:- consult('reporte.pl').

% Interfaz de Usuario
:- consult('ui.pl').

% Predicado de arranque del sistema
inicio :-
    write('Sistema de Seleccion de Personal Cargado con Exito.'), nl,
    write('Ingrese "menu." para iniciar la Interfaz de Usuario.'), nl,
    write('O use "reporte_seleccion(IdVacante)." para probar el sistema.'), nl.


