# Day 04

## LongestSubstringWithoutRepeatingCharacters

- Prompt: Find length of the longest substring without repeating characters.
- Suggested signature: `int lengthOfLongestSubstring(String s)`
- Test cases:
  - s="abcabcbb" -> 3
  - s="bbbbb" -> 1
  - s="pwwkew" -> 3

## LongestRepeatingCharacterReplacement

- Prompt: Given uppercase string and k replacements, return longest repeating character substring length.
- Suggested signature: `int characterReplacement(String s, int k)`
- Test cases:
  - s="ABAB", k=2 -> 4
  - s="AABABBA", k=1 -> 4
  - s="AAAA", k=2 -> 4

## MinimumWindowSubstring

- Prompt: Find the minimum window in s that contains all chars from t.
- Suggested signature: `String minWindow(String s, String t)`
- Test cases:
  - s="ADOBECODEBANC", t="ABC" -> "BANC"
  - s="a", t="a" -> "a"
  - s="a", t="aa" -> ""

