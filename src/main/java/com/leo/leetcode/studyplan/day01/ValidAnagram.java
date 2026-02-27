package com.leo.leetcode.studyplan.day01;

public class ValidAnagram {
    /*
     * Prompt:
     * Given two strings, determine if one is an anagram of the other.
     *
     * Suggested signature:
     * boolean isAnagram(String s, String t)
     */
    public boolean isAnagram(String s, String t) {
        // TODO: implement your solution and replace the method signature with exact types.
        int n = s.length();
        int m = t.length();

        if (n != m) return false;

        int[] s_ = new int[26];

        for (int i = 0; i < n; i++) {
            s_[s.charAt(i) - 'a']++;
        }

        for (int i = 0; i < m; i++) {
            s_[t.charAt(i) - 'a']--;
        }

        for (int x : s_) {
            if (x != 0) return false;
        }

        return true;
    }
}
