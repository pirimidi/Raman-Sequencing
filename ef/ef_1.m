%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 28, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the enhancement factor according to:
%
%          EF = (I_s / c_s) / (I_r / c_r)           (eq. 1)
%
%          where:
%
%          - I_s: signal intensity of SERS (Klarite)
%          - I_r: signal intensity of reference (50 nm Al)
%          - c_s: solution concentration on SERS
%          - c_r: solution concentration on reference
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function ef_1

fprintf('\n'); 
disp('--> Enhancement factor 1 start');

% Set default number formatting.
format short e;

I_s = 1686;  % signal intensity of SERS
I_r = 1673;  % signal intensity for reference

c_s = 10*10^-3;  % solution concentration on SERS
c_r = 1;  % solution concentration on reference

EF = (I_s / c_s) / (I_r / c_r);  % enhancement factor based on eq. 1

fprintf('--> Enhancement factor: %e \n', EF);

disp('--> Enhancement factor 1 end');
fprintf('\n');

