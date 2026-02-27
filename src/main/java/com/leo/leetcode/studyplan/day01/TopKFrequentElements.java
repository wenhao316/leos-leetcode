package com.leo.leetcode.studyplan.day01;

import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;

public class TopKFrequentElements {
    /*
     * Prompt:
     * Return the k most frequent elements in an integer array.
     *
     * Suggested signature:
     * int[] topKFrequent(int[] nums, int k)
     */
    public int[] topKFrequent(int[] nums, int k) {
        // TODO: implement your solution and replace the method signature with exact types.
        int[] res = new int[k];

        Map<Integer, Integer> freq = new HashMap<>();
        for (int x : nums) {
            freq.put(x, freq.getOrDefault(x, 0) + 1);
        }

        PriorityQueue<Integer> pq = new PriorityQueue<>(
            (a,b) -> Integer.compare(freq.get(a), freq.get(b))
        );

        for (int x : freq.keySet()) {
            pq.add(x);
            if (pq.size() > k) pq.poll();
        }

        for (int i = 0; i < k; i++) {
            res[i] = pq.poll();
        }

        return res;
    }
}
