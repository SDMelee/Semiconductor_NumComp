% Compute Electron and Hole Concentrations and Plot Energy Band Diagram
% given Na, Nd, and T
function [n, p, Ni, Efi] = Equilibrium(Na, Nd, T)

% Assumes 100% Ionization and Nondegeneracy
% Constants
k=8.6217e-5;

Ni=ni(T);
n=(Nd-Na)/2 + sqrt(((Nd-Na)/2)^2 + Ni^2);
p=(Na-Nd)/2 + sqrt(((Na-Nd)/2)^2 + Ni^2);

Efi=k*T*log(n/Ni);