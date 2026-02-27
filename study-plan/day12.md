# Day 12

## CombinationSum

- Prompt: Return all unique combinations of candidates that sum to target; reuse allowed.
- Suggested signature: `List<List<Integer>> combinationSum(int[] candidates, int target)`
- Test cases:
  - candidates=[2,3,6,7], target=7 -> [[2,2,3],[7]]
  - candidates=[2,3,5], target=8 -> [[2,2,2,2],[2,3,3],[3,5]]
  - candidates=[2], target=1 -> []

## Subsets

- Prompt: Return all possible subsets of distinct integers.
- Suggested signature: `List<List<Integer>> subsets(int[] nums)`
- Test cases:
  - nums=[1,2,3] -> 8 subsets
  - nums=[0] -> [[],[0]]
  - nums=[1,2] -> [[],[1],[2],[1,2]]

## Permutations

- Prompt: Return all permutations of distinct integers.
- Suggested signature: `List<List<Integer>> permute(int[] nums)`
- Test cases:
  - nums=[1,2,3] -> 6 permutations
  - nums=[0,1] -> [[0,1],[1,0]]
  - nums=[1] -> [[1]]

