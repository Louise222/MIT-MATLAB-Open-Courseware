figure
t=linspace(0,2*pi,10000);
plot(t,sin(t));
hold on;
plot(t,cos(t),'r');
xlabel('Time(s)');
ylabel('Functin Value');
title('Sin and Cos function');
legend('sin','cos');
xlim([0 2*pi]);
ylim([-1.4 1.4]);