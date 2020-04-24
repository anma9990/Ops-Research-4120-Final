function [particle,GlobalBest,BestVals] = PSO_algorithm(particle,GlobalBest,BestVals,parameters,ObjFunction,DimSize)
%% PSO_ALGORITHM runs the particle swarm optimization algorithm

% For each iteration of all particles...
for jj = 1:parameters.MaxIter
    % For each particle...
    for ii = 1:parameters.nSwarm
        % Inertia weight for dynamic systems
        w = 0.5 + rand(DimSize)./2; %from "PSO: Developments, Applications, and Resources, pg83"
        % Random cognitive coefficient between [0,1]
        r1 = rand(DimSize);
        % Random social coefficient between [0,1]
        r2 = rand(DimSize);
        
        % Update velocity
        particle(ii).Velocity = w.*particle(ii).Velocity + ...
            parameters.c1*r1.*(particle(ii).Best.Position - particle(ii).Position) + ...
            parameters.c2*r2.*(GlobalBest.Position - particle(ii).Position);
        % Update postion
        particle(ii).Position = particle(ii).Position + particle(ii).Velocity;
        % Evaluate value of the objective function at the particle's position
        particle(ii).Value = ObjFunction(particle(ii).Position);
        
        % Update Pbest (particle's best)
        if particle(ii).Value < particle(ii).Best.Value
            % Assign new Pbest objective function value and position
            particle(ii).Best.Position = particle(ii).Position;
            particle(ii).Best.Value = particle(ii).Value;
            % Update Gbest (global best)
            if particle(ii).Best.Value < GlobalBest.Value
                % Assign new Gbest objective function value and position
                GlobalBest.Value = particle(ii).Best.Value;
                GlobalBest.Position = particle(ii).Best.Position;
            end
        end % End update of Pbest and Gbest
    end % End particles
    
    % Record the best objective function value after each iteration
    BestVals(jj) = GlobalBest.Value;
    
end % End iterations
end

