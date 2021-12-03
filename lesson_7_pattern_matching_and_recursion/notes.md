# Lesson 7 Notes - Pattern Matching & Recursion

A recursive function is a function that calls itself. The important when writing a recursive function is that there must be a case where the recursion stops. Otherwise, you get stack overflow.

Stack: last in first out data structure. Function calls are put in the stack memory.

I find it easiest to split the problem in a recursive definition before writing code.

`sum([1, 2, 3 ,4])` can be written as `1 + sum([2, 3, 4])` which can be written as `1 + 2 + sum([3, 4])` which can be written as  `1 + 2 + 3 + sum([4])` which can be written as `1 + 2 + 3 + 4 + sum([])`. We have to define that the `sum([])` is 0. Consquently, `sum([1, 2, 3 ,4])` will be `1 + 2 + 3 + 4 + 0` which will return 10.

Recusion is generally a great way to work with immutable data structures.

