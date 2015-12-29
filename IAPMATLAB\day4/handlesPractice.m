x=linspace(0,2*pi,2000);
y=sin(x);
figure
plot(x,y,'r');
xlim([0 2*pi]);
axes=gca;
set(axes,'xtick',[0 pi 2*pi]);
set(axes,'ytick',-1:.5:1);
set(axes,'xticklabel',{'0','1','2'});
grid on
set(gca,'xcolor','c');
set(gca,'ycolor','g');
set(gca,'color','k');
set(gcf,'color',[.3 .3 .3]);
title('One sine wave from 0 to 2\pi','fontsize',14,'fontweight','bold','color','w');
xlabel('X values(in terms of \pi)','fontsize',12,'color','c');
ylabel('Sin(X)','fontsize',12,'color','g');