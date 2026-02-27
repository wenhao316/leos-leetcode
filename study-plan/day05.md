# Day 05

## ValidParentheses

- Prompt: Given a string with brackets, determine if it is valid.
- Suggested signature: `boolean isValid(String s)`
- Test cases:
  - s="()" -> true
  - s="()[]{}" -> true
  - s="(]" -> false

## MinStack

- Prompt: Design a stack that supports push, pop, top, and retrieving minimum in O(1).
- Suggested signature: `class MinStack with push/pop/top/getMin`
- Test cases:
  - ops=[push -2,push 0,push -3,getMin,pop,top,getMin] -> [-3,0,-2]
  - ops=[push 2,push 1,getMin] -> [1]
  - ops=[push 5,pop] -> []

## DailyTemperatures

- Prompt: Return number of days until a warmer temperature for each day.
- Suggested signature: `int[] dailyTemperatures(int[] temperatures)`
- Test cases:
  - temps=[73,74,75,71,69,72,76,73] -> [1,1,4,2,1,1,0,0]
  - temps=[30,40,50,60] -> [1,1,1,0]
  - temps=[30,60,90] -> [1,1,0]

