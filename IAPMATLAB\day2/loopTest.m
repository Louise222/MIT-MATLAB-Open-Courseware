function loopTest(N)
for n=1:N
    a1=mod(n,2);
    a2=mod(n,3);
    if a1==0 
        if a2==0
        disp([num2str(n) 'is divisible by 2 AND 3']);
        else
            disp([num2str(n) 'is divisible by 2']);
        end
    elseif a1==1
        if a2==0
        disp([num2str(n) 'is divisible by 3']);
        else
            disp([num2str(n) 'is NOT divisible by 2 or 3']);
        end
    end
end
    