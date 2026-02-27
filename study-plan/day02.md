# Day 02

## ValidPalindrome

- Prompt: Determine whether a string is a palindrome considering only alphanumeric characters and ignoring cases.
- Suggested signature: `boolean isPalindrome(String s)`
- Test cases:
  - s="A man, a plan, a canal: Panama" -> true
  - s="race a car" -> false
  - s=" " -> true

## TwoSumII

- Prompt: Given a sorted array, find 1-indexed positions of two numbers that add up to target.
- Suggested signature: `int[] twoSum(int[] numbers, int target)`
- Test cases:
  - numbers=[2,7,11,15], target=9 -> [1,2]
  - numbers=[2,3,4], target=6 -> [1,3]
  - numbers=[-1,0], target=-1 -> [1,2]

## ThreeSum

- Prompt: Return all unique triplets in an array whose sum is zero.
- Suggested signature: `List<List<Integer>> threeSum(int[] nums)`
- Test cases:
  - nums=[-1,0,1,2,-1,-4] -> [[-1,-1,2],[-1,0,1]]
  - nums=[0,1,1] -> []
  - nums=[0,0,0] -> [[0,0,0]]

