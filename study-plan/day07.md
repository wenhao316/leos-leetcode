# Day 07

## MergeIntervals

- Prompt: Merge all overlapping intervals.
- Suggested signature: `int[][] merge(int[][] intervals)`
- Test cases:
  - intervals=[[1,3],[2,6],[8,10],[15,18]] -> [[1,6],[8,10],[15,18]]
  - intervals=[[1,4],[4,5]] -> [[1,5]]
  - intervals=[[1,4],[2,3]] -> [[1,4]]

## InsertInterval

- Prompt: Insert a new interval into sorted non-overlapping intervals and merge if needed.
- Suggested signature: `int[][] insert(int[][] intervals, int[] newInterval)`
- Test cases:
  - intervals=[[1,3],[6,9]], new=[2,5] -> [[1,5],[6,9]]
  - intervals=[[1,2],[3,5],[6,7],[8,10],[12,16]], new=[4,8] -> [[1,2],[3,10],[12,16]]
  - intervals=[], new=[5,7] -> [[5,7]]

## NonOverlappingIntervals

- Prompt: Return minimum number of intervals to remove to eliminate all overlaps.
- Suggested signature: `int eraseOverlapIntervals(int[][] intervals)`
- Test cases:
  - intervals=[[1,2],[2,3],[3,4],[1,3]] -> 1
  - intervals=[[1,2],[1,2],[1,2]] -> 2
  - intervals=[[1,2],[2,3]] -> 0

