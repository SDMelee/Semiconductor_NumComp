% Variation of Si Eg with Temperature

% Constants and T-Range
Eg0 = 1.170;
a = 4.730e-4;
b=636;
T=0:25:600;

% Empirical Model
EG = Eg0-a.*(T.^2)./(T+b);

% Linear Approximation
EG2=1.205-(2.8e-4).*T;

close;
plot(T',EG'); hold on;
plot(T', EG2', 'b--'); grid;
xlabel('Temperature (K)'); ylabel('BandGap (eV)');