number=1:5000;
head1=round(rand(1,5000)); % if the position is 1, it means head
cum_p=cumsum(head1,2);
p=cum_p./number;
figure
plot(number,p,'k-');
hold on
plot(number,ones(1,5000)*0.5,'r--');
xlabel('Number of coin flips');
ylabel('Probilities of heads');
title('Sample Probability of Heads in n flips of a simulated coin');