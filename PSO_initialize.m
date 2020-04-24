function [particle, GlobalBest] = PSO_initialize(ObjFunction, VarMin, VarMax, DimSize, parameters)
%% PSO_INITIALIZE allocates and assigns initial conditions to PSO variables

% Allocate all particle traits
null_particle.Position = [];
null_particle.Velocity = [];
null_particle.Cost = [];
null_particle.Best.Position = [];
null_particle.Best.Value = [];
% Create array of swarm particles
particle = repmat(null_particle, parameters.nSwarm, 1);
% Allocate Global variables
GlobalBest.Value = inf;
GlobalBest.Position = [];

% Initialize each of the particle's values
for ii = 1:parameters.nSwarm
    % Assign a random position from a uniform distribution to the particle
    particle(ii).Position = unifrnd(VarMin,VarMax,DimSize);
    % Ititialize the particle's velocity to Zero
    particle(ii).Velocity = zeros(DimSize);
    % Evaluate value of the objective function at the particle's position
    particle(ii).Value = ObjFunction(particle(ii).Position);
    % Initialize the particle's "best" objective function value
    particle(ii).Best.Position = particle(ii).Position;
    particle(ii).Best.Value = particle(ii).Value;
    % Initialize the global "best" objective function value
    if particle(ii).Best.Value < GlobalBest.Value
        GlobalBest = particle(ii).Best;
    end
end

end

