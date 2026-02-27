#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MAIN_BASE="$ROOT/src/main/java/com/leo/leetcode/studyplan"
DOC_BASE="$ROOT/study-plan"

mkdir -p "$MAIN_BASE" "$DOC_BASE"

cat > "$DOC_BASE/INDEX.md" <<'INDEXEOF'
# 2-Week LeetCode Study Plan (2 required + 1 stretch each day)

- Day 01: Two Sum, Valid Anagram, Top K Frequent Elements
- Day 02: Valid Palindrome, Two Sum II, 3Sum
- Day 03: Best Time to Buy and Sell Stock, Product of Array Except Self, Container With Most Water
- Day 04: Longest Substring Without Repeating Characters, Longest Repeating Character Replacement, Minimum Window Substring
- Day 05: Valid Parentheses, Min Stack, Daily Temperatures
- Day 06: Binary Search, Search in Rotated Sorted Array, Find Minimum in Rotated Sorted Array
- Day 07: Merge Intervals, Insert Interval, Non-overlapping Intervals
- Day 08: Invert Binary Tree, Maximum Depth of Binary Tree, Diameter of Binary Tree
- Day 09: Same Tree, Subtree of Another Tree, Lowest Common Ancestor of BST
- Day 10: Number of Islands, Clone Graph, Pacific Atlantic Water Flow
- Day 11: Validate Binary Search Tree, Kth Smallest Element in a BST, Binary Tree Level Order Traversal
- Day 12: Combination Sum, Subsets, Permutations
- Day 13: Climbing Stairs, House Robber, Coin Change
- Day 14: Merge K Sorted Lists, Top K Frequent Elements (Heap), Find Median from Data Stream
INDEXEOF

while IFS='|' read -r day class prompt signature tc1 tc2 tc3; do
  [ -z "$day" ] && continue

  day_dir="day${day}"
  pkg="com.leo.leetcode.studyplan.${day_dir}"
  out_dir="$MAIN_BASE/$day_dir"
  mkdir -p "$out_dir"

  cat > "$out_dir/${class}.java" <<JAVAEOF
package ${pkg};

public class ${class} {
    /*
     * Prompt:
     * ${prompt}
     *
     * Suggested signature:
     * ${signature}
     */
    public Object solve(Object... args) {
        // TODO: implement your solution and replace the method signature with exact types.
        throw new UnsupportedOperationException("TODO");
    }
}
JAVAEOF

  doc_file="$DOC_BASE/day${day}.md"
  if [ ! -f "$doc_file" ]; then
    cat > "$doc_file" <<MDEOF
# Day ${day}

MDEOF
  fi

  cat >> "$doc_file" <<MDEOF
## ${class}

- Prompt: ${prompt}
- Suggested signature: \`${signature}\`
- Test cases:
  - ${tc1}
  - ${tc2}
  - ${tc3}

MDEOF

done <<'DATAEOF'
01|TwoSum|Return indices of the two numbers in an array that add up to a target. Exactly one valid pair exists and you cannot reuse the same element.|int[] twoSum(int[] nums, int target)|nums=[2,7,11,15], target=9 -> [0,1]|nums=[3,2,4], target=6 -> [1,2]|nums=[3,3], target=6 -> [0,1]
01|ValidAnagram|Given two strings, determine if one is an anagram of the other.|boolean isAnagram(String s, String t)|s="anagram", t="nagaram" -> true|s="rat", t="car" -> false|s="aacc", t="ccac" -> false
01|TopKFrequentElements|Return the k most frequent elements in an integer array.|int[] topKFrequent(int[] nums, int k)|nums=[1,1,1,2,2,3], k=2 -> [1,2]|nums=[1], k=1 -> [1]|nums=[4,4,4,6,6,1], k=2 -> [4,6]
02|ValidPalindrome|Determine whether a string is a palindrome considering only alphanumeric characters and ignoring cases.|boolean isPalindrome(String s)|s="A man, a plan, a canal: Panama" -> true|s="race a car" -> false|s=" " -> true
02|TwoSumII|Given a sorted array, find 1-indexed positions of two numbers that add up to target.|int[] twoSum(int[] numbers, int target)|numbers=[2,7,11,15], target=9 -> [1,2]|numbers=[2,3,4], target=6 -> [1,3]|numbers=[-1,0], target=-1 -> [1,2]
02|ThreeSum|Return all unique triplets in an array whose sum is zero.|List<List<Integer>> threeSum(int[] nums)|nums=[-1,0,1,2,-1,-4] -> [[-1,-1,2],[-1,0,1]]|nums=[0,1,1] -> []|nums=[0,0,0] -> [[0,0,0]]
03|BestTimeToBuySellStock|Find the maximum profit from one buy and one sell of a stock given daily prices.|int maxProfit(int[] prices)|prices=[7,1,5,3,6,4] -> 5|prices=[7,6,4,3,1] -> 0|prices=[2,4,1] -> 2
03|ProductOfArrayExceptSelf|Return an array where each index has product of all other numbers without using division.|int[] productExceptSelf(int[] nums)|nums=[1,2,3,4] -> [24,12,8,6]|nums=[-1,1,0,-3,3] -> [0,0,9,0,0]|nums=[2,3] -> [3,2]
03|ContainerWithMostWater|Given heights of vertical lines, return max water container area.|int maxArea(int[] height)|height=[1,8,6,2,5,4,8,3,7] -> 49|height=[1,1] -> 1|height=[4,3,2,1,4] -> 16
04|LongestSubstringWithoutRepeatingCharacters|Find length of the longest substring without repeating characters.|int lengthOfLongestSubstring(String s)|s="abcabcbb" -> 3|s="bbbbb" -> 1|s="pwwkew" -> 3
04|LongestRepeatingCharacterReplacement|Given uppercase string and k replacements, return longest repeating character substring length.|int characterReplacement(String s, int k)|s="ABAB", k=2 -> 4|s="AABABBA", k=1 -> 4|s="AAAA", k=2 -> 4
04|MinimumWindowSubstring|Find the minimum window in s that contains all chars from t.|String minWindow(String s, String t)|s="ADOBECODEBANC", t="ABC" -> "BANC"|s="a", t="a" -> "a"|s="a", t="aa" -> ""
05|ValidParentheses|Given a string with brackets, determine if it is valid.|boolean isValid(String s)|s="()" -> true|s="()[]{}" -> true|s="(]" -> false
05|MinStack|Design a stack that supports push, pop, top, and retrieving minimum in O(1).|class MinStack with push/pop/top/getMin|ops=[push -2,push 0,push -3,getMin,pop,top,getMin] -> [-3,0,-2]|ops=[push 2,push 1,getMin] -> [1]|ops=[push 5,pop] -> []
05|DailyTemperatures|Return number of days until a warmer temperature for each day.|int[] dailyTemperatures(int[] temperatures)|temps=[73,74,75,71,69,72,76,73] -> [1,1,4,2,1,1,0,0]|temps=[30,40,50,60] -> [1,1,1,0]|temps=[30,60,90] -> [1,1,0]
06|BinarySearch|Implement binary search in sorted array; return index or -1.|int search(int[] nums, int target)|nums=[-1,0,3,5,9,12], target=9 -> 4|nums=[-1,0,3,5,9,12], target=2 -> -1|nums=[5], target=5 -> 0
06|SearchInRotatedSortedArray|Search target in rotated sorted array in O(log n).|int search(int[] nums, int target)|nums=[4,5,6,7,0,1,2], target=0 -> 4|nums=[4,5,6,7,0,1,2], target=3 -> -1|nums=[1], target=0 -> -1
06|FindMinimumInRotatedSortedArray|Find minimum element in rotated sorted array with unique values.|int findMin(int[] nums)|nums=[3,4,5,1,2] -> 1|nums=[4,5,6,7,0,1,2] -> 0|nums=[11,13,15,17] -> 11
07|MergeIntervals|Merge all overlapping intervals.|int[][] merge(int[][] intervals)|intervals=[[1,3],[2,6],[8,10],[15,18]] -> [[1,6],[8,10],[15,18]]|intervals=[[1,4],[4,5]] -> [[1,5]]|intervals=[[1,4],[2,3]] -> [[1,4]]
07|InsertInterval|Insert a new interval into sorted non-overlapping intervals and merge if needed.|int[][] insert(int[][] intervals, int[] newInterval)|intervals=[[1,3],[6,9]], new=[2,5] -> [[1,5],[6,9]]|intervals=[[1,2],[3,5],[6,7],[8,10],[12,16]], new=[4,8] -> [[1,2],[3,10],[12,16]]|intervals=[], new=[5,7] -> [[5,7]]
07|NonOverlappingIntervals|Return minimum number of intervals to remove to eliminate all overlaps.|int eraseOverlapIntervals(int[][] intervals)|intervals=[[1,2],[2,3],[3,4],[1,3]] -> 1|intervals=[[1,2],[1,2],[1,2]] -> 2|intervals=[[1,2],[2,3]] -> 0
08|InvertBinaryTree|Invert a binary tree and return root.|TreeNode invertTree(TreeNode root)|root=[4,2,7,1,3,6,9] -> [4,7,2,9,6,3,1]|root=[] -> []|root=[2,1,3] -> [2,3,1]
08|MaximumDepthOfBinaryTree|Return maximum depth of a binary tree.|int maxDepth(TreeNode root)|root=[3,9,20,null,null,15,7] -> 3|root=[1,null,2] -> 2|root=[] -> 0
08|DiameterOfBinaryTree|Return diameter (longest path between any two nodes) of a binary tree.|int diameterOfBinaryTree(TreeNode root)|root=[1,2,3,4,5] -> 3|root=[1,2] -> 1|root=[] -> 0
09|SameTree|Check whether two binary trees are structurally identical with same node values.|boolean isSameTree(TreeNode p, TreeNode q)|p=[1,2,3], q=[1,2,3] -> true|p=[1,2], q=[1,null,2] -> false|p=[1,2,1], q=[1,1,2] -> false
09|SubtreeOfAnotherTree|Check whether one tree is a subtree of another tree.|boolean isSubtree(TreeNode root, TreeNode subRoot)|root=[3,4,5,1,2], sub=[4,1,2] -> true|root=[3,4,5,1,2,null,null,null,null,0], sub=[4,1,2] -> false|root=[1,1], sub=[1] -> true
09|LowestCommonAncestorOfBST|Find the lowest common ancestor of two nodes in a BST.|TreeNode lowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q)|root=[6,2,8,0,4,7,9,3,5], p=2, q=8 -> 6|root=[6,2,8,0,4,7,9,3,5], p=2, q=4 -> 2|root=[2,1], p=2, q=1 -> 2
10|NumberOfIslands|Count islands in a grid of '1' and '0'.|int numIslands(char[][] grid)|grid=[[1,1,1,1,0],[1,1,0,1,0],[1,1,0,0,0],[0,0,0,0,0]] -> 1|grid=[[1,1,0,0,0],[1,1,0,0,0],[0,0,1,0,0],[0,0,0,1,1]] -> 3|grid=[[0]] -> 0
10|CloneGraph|Given a node in an undirected graph, return a deep copy of the graph.|Node cloneGraph(Node node)|graph=[[2,4],[1,3],[2,4],[1,3]] -> cloned graph with same adjacency|graph=[[]] -> cloned single node|graph=[] -> null
10|PacificAtlanticWaterFlow|Return coordinates where water can flow to both Pacific and Atlantic oceans.|List<List<Integer>> pacificAtlantic(int[][] heights)|heights=[[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]] -> valid coordinates set|heights=[[1]] -> [[0,0]]|heights=[[2,1],[1,2]] -> [[0,0],[0,1],[1,0],[1,1]]
11|ValidateBinarySearchTree|Validate whether a binary tree is a valid BST.|boolean isValidBST(TreeNode root)|root=[2,1,3] -> true|root=[5,1,4,null,null,3,6] -> false|root=[2147483647] -> true
11|KthSmallestElementInBST|Return the kth smallest value in a BST.|int kthSmallest(TreeNode root, int k)|root=[3,1,4,null,2], k=1 -> 1|root=[5,3,6,2,4,null,null,1], k=3 -> 3|root=[1], k=1 -> 1
11|BinaryTreeLevelOrderTraversal|Return level-order traversal of a binary tree.|List<List<Integer>> levelOrder(TreeNode root)|root=[3,9,20,null,null,15,7] -> [[3],[9,20],[15,7]]|root=[1] -> [[1]]|root=[] -> []
12|CombinationSum|Return all unique combinations of candidates that sum to target; reuse allowed.|List<List<Integer>> combinationSum(int[] candidates, int target)|candidates=[2,3,6,7], target=7 -> [[2,2,3],[7]]|candidates=[2,3,5], target=8 -> [[2,2,2,2],[2,3,3],[3,5]]|candidates=[2], target=1 -> []
12|Subsets|Return all possible subsets of distinct integers.|List<List<Integer>> subsets(int[] nums)|nums=[1,2,3] -> 8 subsets|nums=[0] -> [[],[0]]|nums=[1,2] -> [[],[1],[2],[1,2]]
12|Permutations|Return all permutations of distinct integers.|List<List<Integer>> permute(int[] nums)|nums=[1,2,3] -> 6 permutations|nums=[0,1] -> [[0,1],[1,0]]|nums=[1] -> [[1]]
13|ClimbingStairs|Count distinct ways to climb n stairs with 1 or 2 steps each move.|int climbStairs(int n)|n=2 -> 2|n=3 -> 3|n=5 -> 8
13|HouseRobber|Return max money robbable without robbing adjacent houses.|int rob(int[] nums)|nums=[1,2,3,1] -> 4|nums=[2,7,9,3,1] -> 12|nums=[2,1,1,2] -> 4
13|CoinChange|Given coin denominations and target amount, return fewest coins or -1.|int coinChange(int[] coins, int amount)|coins=[1,2,5], amount=11 -> 3|coins=[2], amount=3 -> -1|coins=[1], amount=0 -> 0
14|MergeKSortedLists|Merge k sorted linked lists and return one sorted list.|ListNode mergeKLists(ListNode[] lists)|lists=[[1,4,5],[1,3,4],[2,6]] -> [1,1,2,3,4,4,5,6]|lists=[] -> []|lists=[[]] -> []
14|TopKFrequentElementsHeap|Return k most frequent elements using a heap strategy.|int[] topKFrequent(int[] nums, int k)|nums=[1,1,1,2,2,3], k=2 -> [1,2]|nums=[1], k=1 -> [1]|nums=[5,5,4,6,6,6], k=2 -> [6,5]
14|FindMedianFromDataStream|Design structure supporting addNum and findMedian operations.|class MedianFinder with addNum/findMedian|ops=[add 1,add 2,findMedian,add 3,findMedian] -> [1.5,2.0]|ops=[add 2,add 3,findMedian] -> [2.5]|ops=[add 1,findMedian] -> [1.0]
DATAEOF

echo "Scaffold generated under src/main/java/com/leo/leetcode/studyplan and study-plan/."
