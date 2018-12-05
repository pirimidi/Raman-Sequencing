%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 26, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the enhancement factor according to:
%
%          EF = (I_s / N_s) / (I_r / N_r)           (eq. 2)
%
%          where:
%
%          - I_s: signal intensity of SERS (Klarite)
%          - I_r: signal intensity of reference (50 nm Al)
%          - N_s: number of molecules probed for SERS
%          - N_r: number of molecules probed for reference
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function ef_2

fprintf('\n'); 
disp('--> Enhancement factor 2 start');

% Set default number formatting.
format short e;

I_s = 1231;  % signal intensity of SERS
I_r = 156;  % signal intensity for reference

N_s = 1.748412e+005;  % number of molecules probed for SERS
N_r = 1.135790e+010;  % number of molecules probed for reference 

EF = (I_s / N_s) / (I_r / N_r);  % enhancement factor based on eq. 2

fprintf('--> Enhancement factor: %e \n', EF);

disp('--> Enhancement factor 2 end');
fprintf('\n');

