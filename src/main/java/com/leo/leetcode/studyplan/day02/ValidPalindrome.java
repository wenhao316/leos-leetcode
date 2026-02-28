package com.leo.leetcode.studyplan.day02;

public class ValidPalindrome {
    /*
     * Prompt:
     * Determine whether a string is a palindrome considering only alphanumeric characters and ignoring cases.
     *
     * Suggested signature:
     * boolean isPalindrome(String s)
     */
    public boolean isPalindrome(String s) {
        // TODO: implement your solution and replace the method signature with exact types.
        if (s.length() <= 1) return true;
        int left = 0, right = s.length() - 1;

        while (left < right) {
            while (!Character.isLetterOrDigit(s.charAt(left)) && left < right) left++;
            while (!Character.isLetterOrDigit(s.charAt(right)) && right > left) right--;
            if (Character.toLowerCase(s.charAt(left)) == Character.toLowerCase(s.charAt(right))) {
                left++;
                right--;
            } else {
                return false;
            }
        }

        return true;
    }
}
