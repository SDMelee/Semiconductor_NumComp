% ni vs. T calculation for Si (200K-700K)
function ni_T= ni(T)
% Initialization
format short e % Format numbers as five digits plus exponent

% Constants and T-Range
k=8.617e-5;
A=2.510e19;
Eex=0.0074; % Exciton adjustment value for Eg

% Band Gap Vs. T
Eg0 = 1.17;
a=4.730e-4;
b=636;
EG=Eg0-a*(T^2)/(T+b);

% Effective mass ratio (mnr=mn*/m0, mpr=mp*/m0)
mnr=1.028+(6.11e-4)*T-(3.09e-7)*T^2;
mpr=0.612+(7.83e-4)*T-(4.46e-7)*T^2;

%Computation of ni
ni_T=A*((T/300)^(1.5))*((mnr*mpr)^(0.75))*exp(-(EG-Eex)/(2*k*T));