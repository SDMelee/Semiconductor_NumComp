%Fermi Function Calculation, f(dE,T)% Plots

%Constants
k=8.617e-5;

%Computation
for ii=1:4;
    T=100*ii;
    kT=k*T;
    dE(ii,1)=-5*kT;
    for jj=1:101
        f(ii,jj)=1/(1+exp(dE(ii,jj)/kT));
        dE(ii, jj+1)=dE(ii,jj)+0.1*kT;
    end
end
dE=dE(:,1:jj); % This step strips the extra dE value
%Plotting Result
plot(dE',f'); grid; % Note the transpose (') to form data columns
xlabel('E-EF(ev)'); ylabel('f(E)');
text(.05, .2, 'T=400K'); text(-0.03,.1,'T=100K');