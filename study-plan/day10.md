# Day 10

## NumberOfIslands

- Prompt: Count islands in a grid of '1' and '0'.
- Suggested signature: `int numIslands(char[][] grid)`
- Test cases:
  - grid=[[1,1,1,1,0],[1,1,0,1,0],[1,1,0,0,0],[0,0,0,0,0]] -> 1
  - grid=[[1,1,0,0,0],[1,1,0,0,0],[0,0,1,0,0],[0,0,0,1,1]] -> 3
  - grid=[[0]] -> 0

## CloneGraph

- Prompt: Given a node in an undirected graph, return a deep copy of the graph.
- Suggested signature: `Node cloneGraph(Node node)`
- Test cases:
  - graph=[[2,4],[1,3],[2,4],[1,3]] -> cloned graph with same adjacency
  - graph=[[]] -> cloned single node
  - graph=[] -> null

## PacificAtlanticWaterFlow

- Prompt: Return coordinates where water can flow to both Pacific and Atlantic oceans.
- Suggested signature: `List<List<Integer>> pacificAtlantic(int[][] heights)`
- Test cases:
  - heights=[[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]] -> valid coordinates set
  - heights=[[1]] -> [[0,0]]
  - heights=[[2,1],[1,2]] -> [[0,0],[0,1],[1,0],[1,1]]

