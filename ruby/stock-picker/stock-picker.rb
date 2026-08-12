def stocke_picker (prices)
  best_profit = 0
  best_days = nil

  prices.each_with_index do |buy_price, buy_day|
    puts "Buy Price: #{buy_price} is at day: #{buy_day}"
    
    for sell_day in (buy_day+1)...prices.length
      profit = prices[sell_day] - buy_price
      puts "Sell day: #{sell_day}, Profit: #{profit}"
      if profit > best_profit
        best_profit = profit
        best_days = [buy_day, sell_day]
      end
    end
  end

  puts "Best buy/sell days: #{best_days}, profit: #{best_profit}"
end

stocke_picker([17,3,6,9,15,8,6,1,10])