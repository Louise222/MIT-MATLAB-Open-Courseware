function dydt=ODE(t,y)
% initial setting
C=1; G_k=36; G_na=120; G_l=0.3;
E_k=-72; E_na=55; E_l=-49.4;
% Hodgkin-Huxley model of the neuron
dydt=zeros(4,1);
dydt(1)=(1-y(1))*alphan(y(4))-y(1)*betan(y(4));
dydt(2)=(1-y(2))*alpham(y(4))-y(2)*betam(y(4));
dydt(3)=(1-y(3))*alphah(y(4))-y(3)*betah(y(4));
dydt(4)=-1/C*(G_k*y(1)^4*(y(4)-E_k)+G_na*y(2)^3*y(3)*(y(4)-E_na)+G_l*(y(4)-E_l));