% Q1. Scalar variables
a=10;
b=2.5*10^23;
c=2+3*i;
d=exp(j*2*pi/3);
% Q2. Vector variables
aVec=[3.14 15 9 26];
bVec=[2.71;8;28;182];
cVec=5:-0.2:-5;
dVec=logspace(0,1,100);
eVec=['H','e','l','l','o'];
% Q3. Matrix variables
aMat=2*ones(9);
bMat=zeros(9)+diag([1 2 3 4 5 4 3 2 1]);
cMat=reshape(1:100,10,10);
dMat=nan(3,4);
eMat=[13 -1 5; -22 10 -87];
fMat=floor(rand(5,3)*6-3);
% Q4. Scalar equations
x=1/(1+exp(-(a-15)/10));
y=(sqrt(a)+b^(1/21))^pi;
z=log(real((c+d)*(c-d))*sin(a*pi/3))/(c*conj(c));
% Q5. Vector equations
xVec=1/sqrt(2*pi*2.5^2)*exp(-cVec.^2/(2*2.5^2));
yVec=sqrt(aVec'.^2+bVec.^2);
zVec=log10(1./dVec);
% Q6. Matrix equations
xMat=(aVec*bVec)*aMat^2;
yMat=bVec*aVec;
zMat=det(cMat)*transpose(aMat*bMat);
% Q7. Common functions and indexing
cSun=sum(cMat,1);
eMean=mean(eMat,2);
eMat(1,:)=[1 1 1];
cSub=cMat(2:9,2:9);
lin=1:20;lin=reshape(lin,2,10);lin(2,:)=-1*lin(2,:);lin=reshape(lin,1,20);
r=rand(1,5); r(find(r<0.5))=0;