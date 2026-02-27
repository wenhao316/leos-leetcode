# Day 01

## TwoSum

- Prompt: Return indices of the two numbers in an array that add up to a target. Exactly one valid pair exists and you cannot reuse the same element.
- Suggested signature: `int[] twoSum(int[] nums, int target)`
- Test cases:
  - nums=[2,7,11,15], target=9 -> [0,1]
  - nums=[3,2,4], target=6 -> [1,2]
  - nums=[3,3], target=6 -> [0,1]

## ValidAnagram

- Prompt: Given two strings, determine if one is an anagram of the other.
- Suggested signature: `boolean isAnagram(String s, String t)`
- Test cases:
  - s="anagram", t="nagaram" -> true
  - s="rat", t="car" -> false
  - s="aacc", t="ccac" -> false

## TopKFrequentElements

- Prompt: Return the k most frequent elements in an integer array.
- Suggested signature: `int[] topKFrequent(int[] nums, int k)`
- Test cases:
  - nums=[1,1,1,2,2,3], k=2 -> [1,2]
  - nums=[1], k=1 -> [1]
  - nums=[4,4,4,6,6,1], k=2 -> [4,6]

