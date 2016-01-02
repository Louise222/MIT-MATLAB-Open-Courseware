function n=escapeVelocity(Z0,c,N)
R=abs(Z0);
n=1;
while R<2 && n<=N
    Z0=Z0^2+c;
    R=abs(Z0);
    n=n+1;
end