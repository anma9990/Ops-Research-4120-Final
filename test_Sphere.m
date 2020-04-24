function [ObjFunction, nVar, DimSize, VarMin, VarMax] = test_Sphere
% TEST_SPHERE is a convex function 
% Reference: "The PSO algorithm: Convergence analysis and parameter
% selection"
%% Objective Function
ObjFunction= @(x) sum(x.^2);

%% Constraints
% Number of variables (x1,x2,...,xn)
nVar=5;
% Dimension of problem
DimSize=[1,nVar];
% Mimimum range of decision variables, lower bound
VarMin=-100;
% Maximum range of decision variables, upper bound
VarMax=100;

end