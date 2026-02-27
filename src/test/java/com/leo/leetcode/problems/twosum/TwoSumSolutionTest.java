package com.leo.leetcode.problems.twosum;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;

class TwoSumSolutionTest {
    @Test
    void shouldReturnIndicesForSampleCase() {
        TwoSumSolution solution = new TwoSumSolution();
        int[] result = solution.twoSum(new int[]{2, 7, 11, 15}, 9);
        assertArrayEquals(new int[]{0, 1}, result);
    }

    @Test
    void shouldReturnIndicesWhenNumbersRepeat() {
        TwoSumSolution solution = new TwoSumSolution();
        int[] result = solution.twoSum(new int[]{3, 3}, 6);
        assertArrayEquals(new int[]{0, 1}, result);
    }
}
