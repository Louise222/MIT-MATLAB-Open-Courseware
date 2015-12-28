function M=julia(zMax,c,N)
x=linspace(-zMax,zMax,500);
y=linspace(-zMax,zMax,500);
[X,Y]=meshgrid(x,y);
Z=X+Y*1i;
M=escapeVelocity(Z,c,N);