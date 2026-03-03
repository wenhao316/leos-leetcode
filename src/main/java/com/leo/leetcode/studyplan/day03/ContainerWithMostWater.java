package com.leo.leetcode.studyplan.day03;

public class ContainerWithMostWater {
    /*
     * Prompt:
     * Given heights of vertical lines, return max water container area.
     *
     * Suggested signature:
     * int maxArea(int[] height)
     */
    public int maxArea(int[] height) {
        int res = 0;
        int left = 0, right = height.length - 1;

        while (left < right) {
            int curr = (right - left) * Math.min(height[left], height[right]);
            res = Math.max(res, curr);
            if (height[left] < height[right]) {
                left++;
            } else {
                right--;
            }
        }

        return res;
    }
}
