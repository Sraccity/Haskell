# Task 1


Suppose you have a collection of 244 songs from which you want to select 24. How many different choices of 24 songs are possible?

Well, discrete mathematics has a name for these choices: they are called combinations. The number of combinations of 24 items from a collection of 244 items is denoted (24424) or 244C24 or by one of a few other equiavalent notations, and given by the formula:
$$(24424)=244!24!(244−24)!=221⋅222⋅…⋅2441⋅2⋅…⋅24$$

The general formula is:
$$\binom{n}{k}=\frac{n!}{k!(n−k)!}=\frac{(n−k+1)⋅(n−k+2)⋅…⋅n}{1⋅2⋅…⋅k}$$

Write a Haskell function 
```choose :: Integer -> Integer -> Integer ```
that takes non-negative integers n and k and returns the number of combinations (nk).

For example:
```
Main> choose 6 3
20

Main> choose 244 24
992709097351248037007574931469580
```


That's a lot of combinations!
## Hint:

This will be a lot easier if first you have a quick look through the Tour of the Haskell Prelude for a function that can calculate the product of all of the numbers in a list, such as one denoted using range notation (like [1..24] or [221..244]).
