% Carrier Distribution Plot

% Initialization
close
clear

% Constants
EG= 1.12;
kT= 0.0259;
m0=9.11e-31;
mnr=1.18;
mpr=0.81;
hbar=6.63e-34/(2*pi);
c1=1.6e-19;  % joules = c1*eV
c2=1.0e-6;   %m^3=c2*cm^3

% Range
deltaE=linspace(0,5*kT); %E-Ec or Ev-E in eV; 100 evenly spaced points between 0 and 5kT

% Computation
A=m0*sqrt(2*m0)/(pi^2*hbar^3);
An=mnr^(3/2)*A; Ap=mpr^(3/2)*A;
e_dist=c1*c2*An*exp(-EG/(4*kT)).*sqrt(c1*deltaE).*exp(-deltaE/kT);
h_dist=c1*c2*Ap*exp(-3*EG/(4*kT)).*sqrt(c1*deltaE).*exp(-deltaE/kT);
% Note use of c1 and c2 to make distribution units number.cm^3-eV

%Plots
subplot(2,1,1), plot(e_dist',deltaE/kT); grid;
xlabel('electron distribution (num/cm^3-eV)');
ylabel('(E-Ec)/kT');
subplot(2,1,2), plot(h_dist, -deltaE/kT); grid;
axis([0,1.4e7,-5,0])
xlabel('hole distribution (numm/cm^3-eV)');
ylabel('(E-Ev)/kT');