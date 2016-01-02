function Julia(c,k,v) 
% JULIA uses c = 0.2+0.65i, k = 14, v = 500. 
if nargin < 3 
c = 0.2+0.65i; 
k = 14; 
v = 500; 
end 
r = max(abs(c),2); 
d = linspace(-r,r,v); 
% create the matrix A containing complex numbers 
A = ones(v,1)*d+i*(ones(v,1)*d)'; 
% create the point matrix 
B = zeros(v,v); 
% iteration 
for s = 1:k 
B = B+(abs(A)<=r); 
% the map 
A = A.*A+ones(v,v).*c; 
end; 
% plot settings 
imagesc(atan(0.1*B)); 
colormap(jet); 
hold off; 
axis equal; 
axis off; 
end