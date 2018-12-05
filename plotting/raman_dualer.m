%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 9, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program receives two sets of Raman measurement files 
% containing two columns: [C1] Raman shift (cm^-1) and [C2] the correspon-
% ding intensity values (cnt), then plots the correlation on a XY graph.
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function raman_dualer(file_name_1, file_name_2)

fprintf('\n'); 
disp('--> Raman dualer start');

% Set default number formatting.
format short;

% Get Raman shift and intensity values from both data files.
raman_1 = load(file_name_1);
raman_2 = load(file_name_2);

R1 = raman_1(:,1);   % Raman shift (cm^-1): dATP
R2 = raman_2(:,1);   % Raman shift (cm^-1): N3-dATP
I1 = raman_1(:,2);   % intensity (cnt): dATP
I2 = raman_2(:,2);   % intensity (cnt): N3-dATP

% Plot 1: intensity vs. Raman shift.
figure(1)
plot(R1, I1, '-r', R2, I2, '-b', 'LineWidth', 2.0);

xlabel('Raman shift (cm^-1)', 'fontsize', 30);
ylabel('Intensity (cnt)', 'fontsize', 30);
set(gca, 'FontSize', 26);
set(gca,'XLim', [1900 2300]);

h = legend('Data set 1', 'Data set 2', 1);
set(h,'Interpreter','none');

disp('--> Raman dualer end');
fprintf('\n');

