# Leo's Leetcode

Java 21 + Maven workspace for LeetCode practice.

## Project Structure

- `src/main/java/com/leo/leetcode/problems/...`: problem solutions
- `src/test/java/com/leo/leetcode/problems/...`: unit tests for each problem
- `src/main/java/com/leo/leetcode/common`: shared nodes/helpers (`ListNode`, `TreeNode`)
- `src/main/java/com/leo/leetcode/template`: starter template

## Run Tests

Run all tests:

```bash
mvn test
```

Run one test class:

```bash
mvn -Dtest=TwoSumSolutionTest test
```

## Suggested Workflow Per Problem

1. Add solution class under `src/main/java/com/leo/leetcode/problems/<problemname>/`.
2. Add corresponding test class under `src/test/java/com/leo/leetcode/problems/<problemname>/`.
3. Run `mvn test`.

## 2-Week Study Plan Scaffold

- Day-by-day prompts and test cases: `study-plan/`
- Class stubs to implement: `src/main/java/com/leo/leetcode/studyplan/dayXX/`
- Total stubs generated: 42 classes (14 days * 3 problems)

### Daily Routine

1. Open `study-plan/dayXX.md`.
2. Implement the matching class(es) under `src/main/java/com/leo/leetcode/studyplan/dayXX/`.
3. Share your code with me.
4. I will review correctness, edge cases, complexity, and interview explanation quality.
