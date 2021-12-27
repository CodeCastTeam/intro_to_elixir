# Lessons 11 Homework - The Awesome |> operator

## Implement the following

1. Given a map of scores such as `%{math: 96, physics: 80, english: 77}` return the highest score.

2. Write a function that formats strings by doing the following:
  a. remove trailing and ending spaces
  b. replaces multiples spaces with a single space
  c. Capitalizes the first letter of the string
  d. Adds a period at the end (if there is no period)

3. Write a function that finds the most recurring letter in a given in a string.

I would recommend you use all things we learned in previous lessons to accomplish the above including:
 - the |> operator
 - Pattern Matching
 - Enum / Map / String...and other libraries
 - Modules and functions
 - Anonymous functions


 "asdfas dfads" 
 |> String.split("") 
 |> Enum.reject(fn x -> x == "" || x == " " end) 
 |> Enum.reduce(%{}, fn element, acc -> Map.put(acc, element, (acc[element] || 0) + 1)  end) 
 |> Enum.max_by(fn(k, v) -> v end)