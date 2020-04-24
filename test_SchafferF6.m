function [ObjFunction, nVar, DimSize, VarMin, VarMax] = test_SchafferF6
% TEST_SCHAFFERF6 is a testing function which includes many oscillations/peaks 
%   which is difficult for hill-climbing techniques to converge to (the 
%   peaks are known as local optima). The F6 function is designed to have 
%   its peak at the origin with a value of one. Included in the download is
%   'f6Surfaces.m' which includes a 3D surface (x-parameter, y-parameter 
%   and evaluation function values) as well as a 2D plot (y-value set to 
%   equal it's optimal zero, with x-values being plotted against evaluation
%   function values).
% Reference: "The PSO algorithm: Convergence analysis and parameter
% selection"
%% Objective Function
ObjFunction= @(x) 0.5 + (sin(sqrt(x(1)^2+x(2)^2)).^2 - 0.5)./((1+0.001*(x(1)^2+x(2)^2)).^2);

%% Constraints
% Number of variables (x1,x2): 2D!
nVar=2;
% Dimension of problem
DimSize = [1,nVar];
% Mimimum range of decision variables, lower bound
VarMin = -100;
% Maximum range of decision variables, upper bound
VarMax = 100;

end