figure
center=[-1,0;0,0;1,0;-0.5,-0.5;0.5,-0.5];
color=['b','k','r','y','g'];
for i=1:5
    [x,y]=getCircle(center(i,:),0.4);
    plot(x,y,color(i),'LineWidth',4);
    xlim([-1.5,1.5]); ylim([-1.4,1]);
    hold on
end