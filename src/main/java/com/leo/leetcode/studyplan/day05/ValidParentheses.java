package com.leo.leetcode.studyplan.day05;

import java.util.Stack;

public class ValidParentheses {
    /*
     * Prompt:
     * Given a string with brackets, determine if it is valid.
     *
     * Suggested signature:
     * boolean isValid(String s)
     */
    public boolean isValid(String s) {
        Stack<Character> seen = new Stack<>();

        for (char ch : s.toCharArray()) {
            if (ch == '}') {
                if (!seen.isEmpty() && seen.peek() == '{') seen.pop();
                else return false;
            } else if (ch == ')') {
                if (!seen.isEmpty() && seen.peek() == '(') seen.pop();
                else return false;
            } else if (ch == ']') {
                if (!seen.isEmpty() && seen.peek() == '[') seen.pop();
                else return false;
            } else {
                seen.add(ch);
            }
        }

        return seen.isEmpty();
    }
}
