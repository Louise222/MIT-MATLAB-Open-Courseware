function smoothed=rectFilt(x,width)
if mod(width,2)==0
    width=width+1;
    disp('Warning: input width should be odd');
end
v=ones(1,width)/width;
n=length(x);
i=ones(1,(width-1)/2);
x=[i*x(1),x,i*x(n)];
smoothed=conv(x,v,'same');
smoothed=smoothed((width+1)/2:(width+1)/2+n);
