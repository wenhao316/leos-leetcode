# Day 11

## ValidateBinarySearchTree

- Prompt: Validate whether a binary tree is a valid BST.
- Suggested signature: `boolean isValidBST(TreeNode root)`
- Test cases:
  - root=[2,1,3] -> true
  - root=[5,1,4,null,null,3,6] -> false
  - root=[2147483647] -> true

## KthSmallestElementInBST

- Prompt: Return the kth smallest value in a BST.
- Suggested signature: `int kthSmallest(TreeNode root, int k)`
- Test cases:
  - root=[3,1,4,null,2], k=1 -> 1
  - root=[5,3,6,2,4,null,null,1], k=3 -> 3
  - root=[1], k=1 -> 1

## BinaryTreeLevelOrderTraversal

- Prompt: Return level-order traversal of a binary tree.
- Suggested signature: `List<List<Integer>> levelOrder(TreeNode root)`
- Test cases:
  - root=[3,9,20,null,null,15,7] -> [[3],[9,20],[15,7]]
  - root=[1] -> [[1]]
  - root=[] -> []

