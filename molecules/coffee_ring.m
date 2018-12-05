%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 26, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the number of molecules in a concentric
% coffee ring based on:
%
% - Raman dye concentration 
% - deposition volume 
% - speading area (R_o, R_i)
% - excitation wavelength 
% - laser spot size
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function coffee_ring

fprintf('\n'); 
disp('--> Coffee ring start');

% Set default number formatting.
%format short e;

V = 3;  % uL
c = 100; % mM
A = 6.02214179 * 10^23;
D_o = 5.6;  % outer diameter of coffee ring (mm)
D_i = 0;  % inner diameter of coffee ring (mm)
lambda = 633; % excitation wavelenght (nm)
NA = 0.55;  % numerical amperature for 50x objective

d_l = 1.22 * lambda / NA * 10^-3;  % laser spot diameter (um)
A_s = ((D_o/2 * 1000)^2 - (D_i/2 * 1000)^2) * pi;   % coffee ring area (um^2)
A_l = (d_l/2)^2 * pi;  % laser spot area (um^2)
N_s = (V * 10^-6) * (c * 10^-3) * A;  % number of molecules in V
N_l = N_s * A_l / A_s;  % number of molecules in probed area

fprintf('--> Number of molecules in probed area: %e \n', N_l);

disp('--> Coffee ring end');
fprintf('\n');

