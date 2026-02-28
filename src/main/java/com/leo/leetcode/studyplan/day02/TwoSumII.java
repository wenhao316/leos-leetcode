package com.leo.leetcode.studyplan.day02;

import java.util.HashMap;
import java.util.Map;

public class TwoSumII {
    /*
     * Prompt:
     * Given a sorted array, find 1-indexed positions of two numbers that add up to target.
     *
     * Suggested signature:
     * int[] twoSum(int[] numbers, int target)
     */
    public int[] twoSumII(int[] numbers, int target) {
        // TODO: implement your solution and replace the method signature with exact types.

        /*
        HashMap is not optimal
        */
        // Map<Integer, Integer> map = new HashMap<>();
        // for (int i = 0; i < numbers.length; i++) {
        //     int remain = target - numbers[i];
        //     if (map.containsKey(remain)) {
        //         return new int[]{map.get(remain), i + 1};
        //     }
        //     map.put(numbers[i], i + 1);
        // }
        // return new int[2];

        /*
        Two pointers
        */
       int left = 0, right = numbers.length - 1;
        while (left < right) {
            int sum = numbers[left] + numbers[right];
            if ( sum == target) {
                return new int[]{left + 1, right + 1};
            } else if (sum > target) {
                right--;
            } else {
                left++;
            }
        }
        return new int[2];
    }
}
