package com.leo.leetcode.studyplan.day04;

public class LongestRepeatingCharacterReplacement {
    /*
     * Prompt:
     * Given uppercase string and k replacements, return longest repeating character substring length.
     *
     * Suggested signature:
     * int characterReplacement(String s, int k)
     */
    public int characterReplacement(String s, int k) {
        int[] occur = new int[26];
        int left = 0, right = 0;
        int res = 0, currmax = 0;

        for (char ch : s.toCharArray()) {
            occur[ch - 'A']++;
            currmax = Math.max(currmax, occur[ch-'A']);
            if (right - left + 1 - currmax > k) {
                occur[s.charAt(left) - 'A']--;
                left++;
            }
            res = Math.max(res, right - left + 1);
            right++;
        }

        return res;
    }
}
