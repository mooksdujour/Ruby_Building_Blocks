def stock_picker(prices)
    buy_day = 0
    sell_day = 0
    highest_profit = 0
    i = 0
    while i < prices.size - 1
        j = i + 1
        while j < prices.size
            profit = prices[j] - prices[i]
            if profit > highest_profit then
                highest_profit = profit
                buy_day = i
                sell_day = j
            end
            j += 1
        end
        i += 1
    end
    return [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])