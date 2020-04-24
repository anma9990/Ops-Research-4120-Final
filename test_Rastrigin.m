function [ObjFunction, nVar, DimSize, VarMin, VarMax] = test_Rastrigin
% TEST_RASTRIGIN is a non-convex function used as a performance test problem 
%   for optimization algorithms. It is a typical example of non-linear 
%   multimodal function. It was first proposed by Rastrigin[1] as a 
%   2-dimensional function and has been generalized by Rudolph[2]. The 
%   generalized version was popularized by Hoffmeister & Bäck[3] and 
%   Mühlenbein et al.[4] Finding the minimum of this function is a fairly 
%   difficult problem due to its large search space and its large number of
%   local minima.
% Reference: "The PSO algorithm: Convergence analysis and parameter
% selection"
%% Objective Function
ObjFunction= @(x) sum(x.^2 - 10*cos(2*pi.*x) + 10);

%% Constraints
% Number of variables (x1,x2,...,xn)
nVar=5;
% Dimension of problem
DimSize = [1,nVar];
% Mimimum range of decision variables, lower bound
VarMin = -5.12;
% Maximum range of decision variables, upper bound
VarMax = 5.12;

end
