# Lesson 2: Immutability - Notes

Having immutable data structures help in easing writing multi-threaded programs.

It also help reduce side effects that come from bigger complex projects.

Writing code with immutable data structures can be a bit trickier.

Given the same languages, it can be a bit slower.

You don't need a functaional language to use functional programming.

## Don't confuse re-assignment with mutability

Re-assignment means that the pointer to the old variable, now points to a new spot in memory.

Example

```js
name = "Tam";
name1 = name;
name = "John";
console.log(name1); // "Tam"
```