% Normalized Conduction Electron Distribution vs Temp
clear
% Constants and Ranges
k=8.617e-5;
for i=1:3
   T=300*(2^(i-1));
   kT=k*T;
   deltaE(i, 1)=0;
   for j=1:80
      dist_n(i, j)=(2/(sqrt(pi)*(kT)^1.5))*sqrt(deltaE(i,j))*exp(-deltaE(i,j)/kT);
      deltaE(i,j+1)=deltaE(i,j)+0.005;
   end
end
deltaE=deltaE(:,1:j);
plot(deltaE', dist_n'); grid;
xlabel('E-Ec (eV)'); ylabel('gc(E)f(E)/n (1/eV)');
text(0.01,2,'1200K'); text(0.01, 6, '600K'), text(0.01,12,'300K');


