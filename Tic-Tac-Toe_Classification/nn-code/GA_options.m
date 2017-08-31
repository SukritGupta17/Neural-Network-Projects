% Author: Sukrit Gupta
% Function to set up the configuration of the genetic algorithm

function [x,fval,exitflag,output,population,score] = GA_options(nvars,PopulationSize_Data,MaxGenerations_Data,MaxStallGenerations_Data)

options = optimoptions('ga');
% sets the population type to bit string 
options = optimoptions(options,'PopulationType', 'bitstring');
% sets up the population size
options = optimoptions(options,'PopulationSize', PopulationSize_Data);
% termination option for setting maximum generations
options = optimoptions(options,'MaxGenerations', MaxGenerations_Data);
% termination option for maximum generation stall size
options = optimoptions(options,'MaxStallGenerations', MaxStallGenerations_Data);
% set mutation to uniform
options = optimoptions(options,'MutationFcn', {  @mutationuniform [] });
% display output values for every generation (mean,best,population)
options = optimoptions(options,'Display', 'iter');
% plot the mean and best fitness values
options = optimoptions(options,'PlotFcn', { @gaplotbestf });
[x,fval,exitflag,output,population,score] = ga(@fitness,nvars,[],[],[],[],[],[],[],[],options);