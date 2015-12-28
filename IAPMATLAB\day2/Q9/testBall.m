distance=zeros(1,61);
for k=1:61
    distance(k)=throwBall(4,k-1);
end
theta=0:60;
figure
plot(theta,distance,'k');
xlabel('Initial Angle (deg)');
ylabel('Distance thrown (m)');
title('Distance of ball throw as a function of release angle');