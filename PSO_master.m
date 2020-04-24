%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Zachary Donovan and Angus MacDonald
% APPM 4120
% Created: 14 April 20
% Final Project: Particle Swarm Optimization Algorithm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Housekeeping, Sweep Sweep
clear all;close all;clc;

%% Objective function and contraints
% Test problems: 
% - must be MINIMIZATION functions
[ObjFunction, nVar, DimSize, VarMin, VarMax] = test_Sphere;
%[ObjFunction, nVar, DimSize, VarMin, VarMax] = test_Rastrigin;
%[ObjFunction, nVar, DimSize, VarMin, VarMax] = test_SchafferF6;

%% Parameters
% Adjustable PSO coefficients:
% - Swarm Size
% - Max iterations
% - c1 and c2
[parameters] = PSO_parameters;

%% Initialization
% Initialize the particles in the PSO algorithm 
[particle, GlobalBest] = PSO_initialize(ObjFunction, VarMin, VarMax, DimSize, parameters);

% Allocate an array of the best objective function value after each iteration
BestVals = nan(parameters.MaxIter,1);

%% Algorithm
% Run PSO algorithm
[particle,GlobalBest,BestVals] = PSO_algorithm(particle,GlobalBest,BestVals,parameters,ObjFunction,DimSize);

%% Plot convergence rate
figure;
plot(BestVals,'LineWidth',2)
xlabel('Iterations');
ylabel('Best Value');
title('PSO Convergence');
grid on;
grid minor;