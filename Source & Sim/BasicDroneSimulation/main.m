%% ---------------------------------------------------------------------- %
%              Basic Drone Dynamics Simulation
%              Author : Jorge Luis Mayorga Taborda
%              Date: 02/05/16
%              Universidad de los Andes
%              Bogotá Colombia
% 
%  ---------------------------------------------------------------------- %
%% ---------------------------------------------------------------------- %
% Modulo 0: Limpieza y Orden
    clc
    clear all
%% ---------------------------------------------------------------------- %
% Modulo 1: Iniciar Variables
    t0 = 0;  dt = 0.001; tf = 100; % Segundos
    
    xD0 = 0; yD0 = 0; zD0 = 1.5; % Posiciones Iniciales
    x = [xD0 yD0 zD0];
    
    g = 9.81; %Gravedad m/s^2
    
    Omega = [1 0 -sTheta;0 -cPhi cTheta*sPhi; 0 -sPhi cPhi*sPhi];
    

    
    