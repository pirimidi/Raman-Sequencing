%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: December 7, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program receives a Raman measurement file containing two 
% columns: [C1] Raman shift (cm^-1) and [C2] the corresponding intensity
% values (cnt), then plots the correlation onto an existing XY graph.
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function raman_add_on(file_name)

fprintf('\n'); 
disp('--> Raman add on start');

% Set default number formatting.
format short;

% Get Raman shift and intensity values from data file.
raman = load(file_name);

RS = raman(:,1);   % Raman shift (cm^-1)
IN = raman(:,2);   % intensity (cnt)

% Plot new data set over currently existing one.
hold on;
plot(RS, IN)

disp('--> Raman add on end');
fprintf('\n');

