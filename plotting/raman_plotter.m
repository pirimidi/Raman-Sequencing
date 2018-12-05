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

function raman_plotter(file_name)

fprintf('\n'); 
disp('--> Raman plotter start');

% Set default number formatting.
format short;

% Get Raman shift and intensity values from data file.
raman = load(file_name);

RS = raman(:,1);   % Raman shift (cm^-1)
IN = raman(:,2);   % intensity (cnt)

% Plot 1: intensity vs. Raman shift.
figure(1)
plot(RS, IN, '-r', 'LineWidth', 2.0);

xlabel('Raman shift (cm^-1)', 'fontsize', 30);
ylabel('Intensity (cnt)', 'fontsize', 30);
set(gca, 'FontSize', 26);
set(gca,'XLim', [1900 2300]);

%h = legend('Intensity vs. Raman shift', 2);
%set(h,'Interpreter','none');

%t = 'Raman Shift of Cyano Tag Compound: ';
%title([t, file_name], 'fontsize', 16,'fontweight', 'b');

disp('--> Raman plotter end');
fprintf('\n');

