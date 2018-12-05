%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 23, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the number of molecules on flat Raman
% substrates based on:
%
% - Raman dye concentration 
% - deposition volume 
% - speading area
% - excitation wavelength 
% - laser spot size
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function probed_molecules

fprintf('\n'); 
disp('--> Probed molecules start');

% Set default number formatting.
%format short e;

V = 2;  % uL
c = 1*10^-1; % mM
A = 6.02214179 * 10^23;
L_s = 3;  % lenght of speading area of rectangle (mm)
lambda = 785; % excitation wavelenght (nm)
NA = 0.55;  % numerical amperature for 50x objective

d_l = 1.22 * lambda / NA * 10^-3;  % laser spot diameter (um)
A_s = (L_s * 1000)^2;  % solution spreading area (um^2)
A_l = (d_l/2)^2 * pi;  % laser spot area (um^2)
N_s = (V * 10^-6) * (c * 10^-3) * A;  % number of molecules in V
N_l = N_s * A_l / A_s;  % number of molecules in probed area

fprintf('--> Number of molecules in probed area: %e \n', N_l);

disp('--> Probed molecules end');
fprintf('\n');

