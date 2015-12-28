function endValue=tradeStock(initialInvestment,price,buy,sell)
n=length(buy);
money=initialInvestment;
for k=1:n
    amount=floor((money-12.95)/price(buy(k)));
    if amount>0
        remain=money-12.95-amount*price(buy(k));
        money=amount*price(sell(k))-12.95+remain;
    end
end
endValue=money;