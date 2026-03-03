package com.leo.leetcode.studyplan.day03;

public class BestTimeToBuySellStock {
    /*
     * Prompt:
     * Find the maximum profit from one buy and one sell of a stock given daily prices.
     *
     * Suggested signature:
     * int maxProfit(int[] prices)
     */
    public int maxProfit(int[] prices) {
        int res = 0;
        int curr = prices[0];

        for (int x : prices) {
            res = Math.max(res, x - curr);
            curr = Math.min(curr, x);
        }

        return res;
    }
}
