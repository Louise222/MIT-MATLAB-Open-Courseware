function n=escapeVelocity(Z0,c,N)
Z=Z0; R=abs(Z);
n=1;
while all(R<2,n<=N)
    Z=Z.^2+c;
    R=abs(Z);
    n=n+1;
end