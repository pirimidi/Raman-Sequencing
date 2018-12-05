%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 29, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program gathers a set of Raman measurement files containing
% two columns: [C1] Raman shift (cm^-1) and [C2] the corresponding intensity
% values (cnt) from the current working directory, then averages the values.
% Next it substracts background based on a 2 column matrix argument and 
% finally plots the correlation on a XY graph using linear Savitsky-Golay
% smoothing (4th degree polynomial, 25 data points).
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function raman_background_smooth(ave, bgr)

fprintf('\n'); 
disp('--> Raman background smooth start');

% Set default number formatting.
format short;

% Get averaged Raman data and background values from data file.
raman_ave = load(ave); 
background = load(bgr);

% Substract background from averaged peak data.
raman_rem = raman_ave - background;

% Smooth curve using linear Savitsky-Golay algorithm.
smooth = sgolayfilt(raman_rem, 4, 25);

RS = raman_ave(:,1);   % Raman shift (cm^-1)
IN = smooth(:,2);   % intensity (cnt)

% Plot 1: intensity vs. Raman shift.
figure(1)
plot(RS, IN, '-r', 'LineWidth', 2.0);

xlabel('Raman shift (cm^-1)', 'fontsize', 30);
ylabel('Intensity (cnt)', 'fontsize', 30);
set(gca, 'FontSize', 26);
set(gca,'XLim', [1900 2300]);

%h = legend('Background Removed Averaged Intensity vs. Raman shift', 2);
%set(h,'Interpreter','none');

%t = 'Averaged Raman Shift of C5 Compound on Glass Substrate';
%title(t, 'fontsize', 16,'fontweight', 'b');

% Save averaged Raman data in a text file.
fid = fopen('bgr_removed.txt', 'w');
fprintf(fid, '%.4f %.6f\n', [RS, IN]');
fclose(fid);

disp('--> Raman background smooth end');
fprintf('\n');

