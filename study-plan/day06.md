# Day 06

## BinarySearch

- Prompt: Implement binary search in sorted array; return index or -1.
- Suggested signature: `int search(int[] nums, int target)`
- Test cases:
  - nums=[-1,0,3,5,9,12], target=9 -> 4
  - nums=[-1,0,3,5,9,12], target=2 -> -1
  - nums=[5], target=5 -> 0

## SearchInRotatedSortedArray

- Prompt: Search target in rotated sorted array in O(log n).
- Suggested signature: `int search(int[] nums, int target)`
- Test cases:
  - nums=[4,5,6,7,0,1,2], target=0 -> 4
  - nums=[4,5,6,7,0,1,2], target=3 -> -1
  - nums=[1], target=0 -> -1

## FindMinimumInRotatedSortedArray

- Prompt: Find minimum element in rotated sorted array with unique values.
- Suggested signature: `int findMin(int[] nums)`
- Test cases:
  - nums=[3,4,5,1,2] -> 1
  - nums=[4,5,6,7,0,1,2] -> 0
  - nums=[11,13,15,17] -> 11

