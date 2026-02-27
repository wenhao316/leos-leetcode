# Day 09

## SameTree

- Prompt: Check whether two binary trees are structurally identical with same node values.
- Suggested signature: `boolean isSameTree(TreeNode p, TreeNode q)`
- Test cases:
  - p=[1,2,3], q=[1,2,3] -> true
  - p=[1,2], q=[1,null,2] -> false
  - p=[1,2,1], q=[1,1,2] -> false

## SubtreeOfAnotherTree

- Prompt: Check whether one tree is a subtree of another tree.
- Suggested signature: `boolean isSubtree(TreeNode root, TreeNode subRoot)`
- Test cases:
  - root=[3,4,5,1,2], sub=[4,1,2] -> true
  - root=[3,4,5,1,2,null,null,null,null,0], sub=[4,1,2] -> false
  - root=[1,1], sub=[1] -> true

## LowestCommonAncestorOfBST

- Prompt: Find the lowest common ancestor of two nodes in a BST.
- Suggested signature: `TreeNode lowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q)`
- Test cases:
  - root=[6,2,8,0,4,7,9,3,5], p=2, q=8 -> 6
  - root=[6,2,8,0,4,7,9,3,5], p=2, q=4 -> 2
  - root=[2,1], p=2, q=1 -> 2

