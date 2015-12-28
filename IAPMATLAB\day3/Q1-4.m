% Q1
A=[3 6 4;1 5 0;0 7 7];
b=[1;2;3];
r=rank(A);
x1=A\b;
error=abs(A*x1-b);

% Q2
y1=quad(@(x) x.*exp(-x/3),0,5);
y2=-24*exp(-5/3)+9;
error=abs(y1-y2)

% Q3
A=[1 2;3 4];
B=inv(A);
A*B

% Q4
load randomData
p1=polyfit(x,y,1);
p2=polyfit(x,y,2);
p3=polyfit(x,y,3);
p4=polyfit(x,y,4);
p5=polyfit(x,y,5);
figure
plot(x,y,'k.','LineWidth',2);
hold on;
plot(x,polyval(p1,x),'b','LineWidth',2);
plot(x,polyval(p2,x),'c','LineWidth',2);
plot(x,polyval(p3,x),'g','LineWidth',2);
plot(x,polyval(p4,x),'y','LineWidth',2);
plot(x,polyval(p5,x),'r','LineWidth',2);
legend('Data','Order 1','Order 2','Order 3','Order 4','Order 5');
title('Polynomial fits to noisy data');
xlabel('X'); ylabel('Y');