%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 9, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program receives a Raman measurement file containing two 
% columns: [C1] Raman shift (cm^-1) and [C2] the corresponding intensity
% values (cnt), then plots the correlation on a XY graph.
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function raman_average(file_name1, file_name2)

fprintf('\n'); 
disp('--> Raman average start');

% Set default number formatting.
format short;

% Get Raman shift and intensity values from data file.
raman1 = load(file_name1);
raman2 = load(file_name2);
raman = (raman1 + raman2)/2;

RS = raman(:,1);   % Raman shift (cm^-1)
IN = raman(:,2);   % intensity (cnt)

% Plot 1: intensity vs. Raman shift.
figure(1)
plot(RS, IN, '-r', 'LineWidth', 2.0);

xlabel('Raman shift (cm^-1)', 'fontsize', 12,'fontweight', 'b');
ylabel('Intensity (cnt)', 'fontsize', 12,'fontweight', 'b');

h = legend('Intensity vs. Raman shift', 2);
set(h,'Interpreter','none');

t = 'Raman Shift of Cyano Tag Compound: ';
title(t, 'fontsize', 16,'fontweight', 'b');

disp('--> Raman average end');
fprintf('\n');

