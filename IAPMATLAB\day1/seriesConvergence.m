% figure 1
p=0.99;
k=0:1000;
geomSeries=p.^k;
G=1/(1-p);
figure
plot(k,linspace(G,G,1001),'r');
hold on;
plot(k,cumsum(geomSeries),'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of geometric series with p=0.99');
legend('Infinite sum','Finite sum');
hold off;
% figure 2
p=2;
n=1:500;
pSeries=1./(n.^p);
P=pi^2/6;
figure
plot(n,linspace(P,P,500),'r');
hold on;
plot(n,cumsum(pSeries),'b');
xlabel('Index');
ylabel('Sum');
title('Convergence of p-series with p=2');
legend('Infinite sum','Finite sum');