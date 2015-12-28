function distance=throwBall(v,theta)
h=1.5;
g=9.8;
t=linspace(0,10,10000);
y=h+v*sin(theta*pi/180)*t-0.5*g*t.^2;
if min(y)>0
    disp('The ball does not hit the ground in 10 seconds');
    distance=NaN;
else
    indice=find(abs(y)==min(abs(y)));
    distance=v*cos(theta*pi/180)*(indice-1)*0.001;
end
