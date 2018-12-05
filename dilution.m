%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 26, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the solvent volume required to obtain a 
% a particular concentration of solution based on:
%
% - molecular weight 
% - mass of solute (Raman tag compound) 
% - required concentration
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function dilution

fprintf('\n'); 
disp('--> Dilution start');

% Set default number formatting.
%format short e;

M = 235.21  % molecular weight of Raman tag compound (g/mol)
m = 117  % mass of Raman tag compound (mg)
c = 1000 % desired concentration of Raman tag compound (mM)

n = (m * 10^-3) / M  % number of moles of Raman tag compound
V = n / (c * 10^-3) * 10^6  % volume of solvent (methanol) required to get desired concentration (uL) 

fprintf('--> Volume of solvent needed: %e uL\n', V);

disp('--> Dilution end');
fprintf('\n');

