function [x,y]=getCircle(center,r)
t=0:pi/1000:2*pi;
x=cos(t)*r+center(1);
y=sin(t)*r+center(2);