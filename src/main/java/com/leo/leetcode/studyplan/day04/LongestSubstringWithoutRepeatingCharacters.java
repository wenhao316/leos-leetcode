package com.leo.leetcode.studyplan.day04;

import java.util.HashSet;
import java.util.Set;

public class LongestSubstringWithoutRepeatingCharacters {
    /*
     * Prompt:
     * Find length of the longest substring without repeating characters.
     *
     * Suggested signature:
     * int lengthOfLongestSubstring(String s)
     */
    public int lengthOfLongestSubstring(String s) {
        if (s.length() < 2) return s.length();

        int res = 0;
        int left = 0, right = 1;
        Set<Character> seen = new HashSet<>();
        seen.add(s.charAt(left));

        while (right < s.length()) {
            if (seen.contains(s.charAt(right))) {
                seen.remove(s.charAt(left));
                left++;
            } else {
                seen.add(s.charAt(right));
                right++;
            }
            res = Math.max(res, right - left);
        }

        return res;
    }
}
