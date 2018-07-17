# Best Time to Buy and Sell Stock

# Description:
# Say you have an array for which the ith element is the price of a given stock on day i.
# Design an algorithm to find the maximum profit.
# You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times).
# However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

def max_profit(prices)
  # Test for boundary conditions
  return 0 if prices.length <= 1
  profit = 0
  for i in 1..(prices.length-1) do
    if prices[i] > prices[i-1]
      profit = profit + (prices[i] - prices[i-1])
    end
  end
  return profit
end
