h=1.5;
g=9.8;
v=4;
theta=45;
t=linspace(0,1,1000);
x=v*cos(theta*pi/180)*t;
y=h+v*sin(theta*pi/180)*t-0.5*g*t.^2;
ind=find(y<0);
X=x(min(ind));
disp(['The ball hits the ground at a distance of ' num2str(X) 'meters']);
figure
plot(x,y,'b');
xlabel('Distance(m)');
ylabel('Ball Height(m)');
title('Ball Trajectory');
hold on
plot(linspace(0,max(x),1000),linspace(0,0,1000),'--k');