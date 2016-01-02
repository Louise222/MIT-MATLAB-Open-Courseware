function M=julia(zMax,c,N)
temp=linspace(-zMax,zMax,500);
[X,Y]=meshgrid(temp,temp);
Z=X+Y*1i;
M=ones(size(Z))*N;
for u=1:500
    for v=1:500
    M(u,v)=escapeVelocity(Z(u,v),c,N);
    end
end
end