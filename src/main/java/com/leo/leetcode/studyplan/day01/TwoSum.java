package com.leo.leetcode.studyplan.day01;

import java.util.HashMap;
import java.util.Map;

public class TwoSum {
    /*
     * Prompt:
     * Return indices of the two numbers in an array that add up to a target. Exactly one valid pair exists and you cannot reuse the same element.
     *
     * Suggested signature:
     * int[] twoSum(int[] nums, int target)
     */
    public int[] twoSum(int[] nums, int target) {
        // TODO: implement your solution and replace the method signature with exact types.
        Map<Integer, Integer> map = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int remain = target - nums[i];
            if (map.containsKey(remain)) {
                return new int[]{map.get(remain), i};
            }
            map.put(nums[i], i);
        }

        return new int[2];
        
    }
}
