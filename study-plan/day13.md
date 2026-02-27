# Day 13

## ClimbingStairs

- Prompt: Count distinct ways to climb n stairs with 1 or 2 steps each move.
- Suggested signature: `int climbStairs(int n)`
- Test cases:
  - n=2 -> 2
  - n=3 -> 3
  - n=5 -> 8

## HouseRobber

- Prompt: Return max money robbable without robbing adjacent houses.
- Suggested signature: `int rob(int[] nums)`
- Test cases:
  - nums=[1,2,3,1] -> 4
  - nums=[2,7,9,3,1] -> 12
  - nums=[2,1,1,2] -> 4

## CoinChange

- Prompt: Given coin denominations and target amount, return fewest coins or -1.
- Suggested signature: `int coinChange(int[] coins, int amount)`
- Test cases:
  - coins=[1,2,5], amount=11 -> 3
  - coins=[2], amount=3 -> -1
  - coins=[1], amount=0 -> 0

