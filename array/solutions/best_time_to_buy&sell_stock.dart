// 2. [Best Time to Buy and Sell Stock] find maximum profite
// import 'dart:math';

import 'dart:math';

List<int> prices = [7, 1, 5, 3, 6, 4];
var minPrice = prices[0]; //lowest prixw

void main() {
  int profit = 0;
  for (var i = 0; i < prices.length; i++) {
    minPrice = min(minPrice, prices[i]);
    profit = max(profit, prices[i] - minPrice);

    print(
      "Day $i -> minPrice: $minPrice, potential profit: ${prices[i] - minPrice}, maxProfit: $profit",
    );
  }
  print(profit);
}

