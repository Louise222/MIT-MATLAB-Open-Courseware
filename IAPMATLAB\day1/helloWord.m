disp('Hello Word!');
disp('I am going to learn MATLAB!');
load startTime
disp(['I started learning MATLAB on ' startString]);
tau=1.5*24*60*60;
endOfClass=5*24*60*60;
knowledgeAtEnd=1-exp(-endOfClass/tau);
disp(['At the end of 6.094, I will know ' num2str(knowledgeAtEnd*100) '% of MATLAB']);
secPerMin=60;
secPerHour=60*secPerMin;
secPerDay=24*secPerHour;
secPerMonth=30.5*secPerDay;
secPerYear=12*secPerMonth;
secondConversion=[secPerYear secPerMonth secPerDay secPerHour secPerMin 1];
currentTime=clock;
elapsedTime=currentTime-start;
t=secondConversion*elapsedTime';
currentKnowledge=1-exp(-t/tau);
disp(['At this time, I know ' num2str(currentKnowledge*100) '% of MATLAB']);
tVec=linspace(0,endOfClass,10000);
knowledgeVec=1-exp(-tVec/tau);
[val, ind]=min(abs(knowledgeVec-0.5));
halfTime=tVec(ind);
disp(['I will know half of MATLAB after ' num2str(halfTime/secPerDay) ' days']);
figure
plot(tVec/secPerDay,knowledgeVec);
