% not right
poisson=poissrnd(5,1,1000);
[N,X]=hist(poisson);
N=N/sum(N);
figure
bar(X,N);
hold on
plot(X,poisspdf(X,5),'r-');
xlabel('Value');
ylabel('Probability');
title('Poisson distribution and observed histogram');