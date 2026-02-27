# Day 14

## MergeKSortedLists

- Prompt: Merge k sorted linked lists and return one sorted list.
- Suggested signature: `ListNode mergeKLists(ListNode[] lists)`
- Test cases:
  - lists=[[1,4,5],[1,3,4],[2,6]] -> [1,1,2,3,4,4,5,6]
  - lists=[] -> []
  - lists=[[]] -> []

## TopKFrequentElementsHeap

- Prompt: Return k most frequent elements using a heap strategy.
- Suggested signature: `int[] topKFrequent(int[] nums, int k)`
- Test cases:
  - nums=[1,1,1,2,2,3], k=2 -> [1,2]
  - nums=[1], k=1 -> [1]
  - nums=[5,5,4,6,6,6], k=2 -> [6,5]

## FindMedianFromDataStream

- Prompt: Design structure supporting addNum and findMedian operations.
- Suggested signature: `class MedianFinder with addNum/findMedian`
- Test cases:
  - ops=[add 1,add 2,findMedian,add 3,findMedian] -> [1.5,2.0]
  - ops=[add 2,add 3,findMedian] -> [2.5]
  - ops=[add 1,findMedian] -> [1.0]

