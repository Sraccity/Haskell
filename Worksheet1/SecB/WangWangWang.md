![Summaries of things](image.png)


All but one of the cases for the function wang have been implemented already. However, if you scroll down to the bottom of Main.hs, you will see that the last case, where left and right are empty, always returns True. This 'base case' of the algorithm should instead return True if and only if the fully-reduced sequent is valid. As we have discussed, this amounts to checking whether there is some propositional letter occuring in both reducedLeft and reducedRight.

For example:

Main> wang [] [] ['A', 'B'] ['C', 'D']

False

Main> wang [] [] ['A', 'B'] ['A', 'C']

True

Your first task is to correctly implement this base case.

