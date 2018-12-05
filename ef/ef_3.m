%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 26, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the enhancement factor according to:
%
%          EF = (I_s / I_r) * (N_r / N_s) * (P_r / P_s) * (T_r / T_s)   (eq. 3)
%
%          where:
%
%          - I_s: signal intensity of SERS (Klarite)
%          - I_r: signal intensity of reference (50 nm Al)
%          - N_s: number of molecules probed for SERS
%          - N_r: number of molecules probed for reference
%          - P_s: excitation power on SERS (%)
%          - P_r: excitation power on reference (%)
%          - T_s: exposure time on SERS (s)
%          - T_r: exposure time on reference (s)
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function ef_3

fprintf('\n'); 
disp('--> Enhancement factor 3 start');

% Set default number formatting.
format short e;

I_s = 1400;  % signal intensity of SERS
I_r = 30;  % signal intensity for reference

N_s = 7.770721e+007;  % number of molecules probed for SERS
N_r = 5.936394e+009;  % number of molecules probed for reference 

P_s = 50;  % excitation power on SERS (P_0 %)
P_r = 100;  % excitation power on reference (P_0 %)

T_s = 1;  % exposure time on SERS (s)
T_r = 1;  % exposure time on reference (s)

EF = (I_s / I_r) * (N_r / N_s) * (P_r / P_s) * (T_r / T_s);  % enhancement factor based on eq. 3

fprintf('--> Enhancement factor: %e \n', EF);

disp('--> Enhancement factor 3 end');
fprintf('\n');

