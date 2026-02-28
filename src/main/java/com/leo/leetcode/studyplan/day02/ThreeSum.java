package com.leo.leetcode.studyplan.day02;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ThreeSum {
    /*
     * Prompt:
     * Return all unique triplets in an array whose sum is zero.
     *
     * Suggested signature:
     * List<List<Integer>> threeSum(int[] nums)
     */
    public List<List<Integer>> threeSum(int[] nums) {
        Arrays.sort(nums);
        List<List<Integer>> res = new ArrayList<>();
        for (int i = 0; i < nums.length && nums[i] <= 0; i++) {
            if (i == 0 || nums[i-1] != nums[i]) {
                twoSum(nums, i, res);
            }
        }
        return res;
    }

    private void twoSum(int[] nums, int i, List<List<Integer>> res) {
        Map<Integer, Integer> map = new HashMap<>();
        Set<Integer> seen = new HashSet<>();

        for (int j = i + 1; j < nums.length; j++) {
            int remain = -nums[i] - nums[j];
            if (seen.contains(remain)) {
                res.add(Arrays.asList(nums[i], nums[j], remain));
                while (j + 1 < nums.length && nums[j] == nums[j+1]) j++;
            }
            seen.add(nums[j]);
        }
    }
}
