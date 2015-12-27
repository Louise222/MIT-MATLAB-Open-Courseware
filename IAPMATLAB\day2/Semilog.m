x=1:5;
y=[15,25,55,115,144];
semilogy(x,y,'ms','LineWidth',4,'MarkerSize',10);
xlabel('Years');
ylabel('The Number of Students');
title('Class Size with Year Grows');
xlim([0,6]);