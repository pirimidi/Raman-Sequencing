%--------------------------------------------------------------------------
% Author: Mirko Palla.
% Date: September 23, 2011.
%
% For: DNA sequencing by Raman spectroscopy at the Ju Lab - Chemical 
% Engineering Department, Columbia University.
%
% Purpose: This program calculates the number of molecules on D2PAs based
% on dimensions of the nanostructure and surface absorbance density of SERS
% dye molecules.
%
% This software may be used, modified, and distributed freely, but this
% header may not be modified and must appear at the top of this file.
%--------------------------------------------------------------------------

function sers_molecules

fprintf('\n'); 
disp('--> SERS molecules start');
fprintf('\n'); 

% Set default number formatting.
%format short e;

rho = 1.5 *10E-3;
N_A = 6*10^23;
r_spot = 10^6;
r_Au = 50;
r_si = 35;
r_Si = 35;
s_Si = 200;
d_Au = 50;

B = (2*pi*r_Au^2 + 2*pi*r_Au*d_Au) + ((2*r_Si + s_Si)^2 - pi*r_si^2);
C = (pi*r_spot^2) / ((2*r_Si + s_Si)^2);
N_SERS = rho * N_A * B /C;

fprintf('--> Density: %e \n', rho);
fprintf('--> Avogadros number: %e \n', N_A);
fprintf('--> Radius of spot: %e \n', r_spot);
fprintf('--> Radius of gold disk: %e \n', r_Au);
fprintf('--> Radius of silicon 1: %e \n', r_si);
fprintf('--> Radius of silicon 2: %e \n', r_Si);
fprintf('--> Surface area of silicon 2: %e \n', s_Si);
fprintf('--> Thickness of gold substrate: %e \n', d_Au);

fprintf('--> B: %e \n', B);
fprintf('--> C: %e \n', C);
fprintf('--> Number of SERS molecules: %e \n', N_SERS);

fprintf('\n');
disp('--> SERS molecules end');
fprintf('\n');

