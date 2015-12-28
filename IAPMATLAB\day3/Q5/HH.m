[t,ySS]=ode45('ODE',[0,20],[0.5,0.5,0.5,-60]);
figure
plot(t,ySS(:,4),'k-');
xlabel('Time(ms)'); ylabel('Transmembrane Voltage (mV)');
title('Approaching Steady State');

n=size(ySS);
ySS=ySS(n(1),:);
figure
for i=1:10
    [t,y]=ode45('ODE',[0,20],[ySS(1:3),ySS(4)+i]);
    if max(y(:,4))>0
        plot(t,y(:,4),'r-');
    else
        plot(t,y(:,4),'k-');
    end
    hold on
end
xlabel('Time(ms)'); ylabel('Transmembrane Voltage (mV)');
title('Threshold Behavior');