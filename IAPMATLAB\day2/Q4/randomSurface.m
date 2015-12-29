Z0=rand(5,5);
[X0,Y0]=meshgrid(1:5);
[X1,Y1]=meshgrid(1:.1:5);
Z1=interp2(X0,Y0,Z0,X1,Y1,'cubic');
figure
surf(X1,Y1,Z1); shading interp; colormap(hsv); 
hold on
contour(X1,Y1,Z1,15); 
colorbar;
caxis([0 1]);