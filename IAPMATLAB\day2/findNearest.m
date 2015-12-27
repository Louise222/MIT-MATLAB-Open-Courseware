function [index]=findNearest(x,desiredVal)
[a,b]=size(x);
if a==1
    index=find(abs(x-desiredVal)==min(abs(x-desiredVal)));
elseif a>1
y=x(:);
m=min(abs(y-desiredVal));
inds=find(abs(y-desiredVal)==m);
a2=floor(inds/a)+1;
a1=inds-a*(a2-1);
index=[a1,a2];
end