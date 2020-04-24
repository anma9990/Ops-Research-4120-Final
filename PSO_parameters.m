function [parameters] = PSO_parameters()
%% PSO_PARAMETERS defines the PSO algorithm parameters

% Swarm size(Number of particles)
parameters.nSwarm = 50;
% Maximum number of algorithm iterations
parameters.MaxIter = 100;
% Cognitive acceleration coefficient
parameters.c1 = 1.49445; %from "PSO: Developments, Applications, and Resources, pg83"
% Social acceleration coefficient
parameters.c2 = 1.49445; %from "PSO: Developments, Applications, and Resources, pg83"
end

