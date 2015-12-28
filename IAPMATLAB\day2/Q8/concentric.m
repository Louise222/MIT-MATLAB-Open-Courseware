figure
for i=1:5
    [x,y]=getCircle([0,0],i);
    plot(x,y,'LineWidth',7-i);
    xlim([-6,6]); ylim([-5,5]);
    hold on
end
colormap(jet)