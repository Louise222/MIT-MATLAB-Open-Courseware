function juliaAnimation(zMax,c,N)
temp=linspace(-zMax,zMax,500);
[X,Y]=meshgrid(temp,temp);
Z=X+Y*1i;
M=ones(size(Z))*N;
for n=1:N
    indices=find(abs(Z)>2);
    M(indices)=n;
    Z(indices)=NaN;
    Z=Z.^2+c;
end    
imagesc(temp,temp,atan(0.1*M));
axis xy;
drawnow;
end