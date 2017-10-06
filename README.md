# Logarithms
This algorithm is meant to calculate the logarithm of any number up to any level of precision. So far, it gets an accurate result up to ~20 decimal places.

I wrote this program because I could not find something that works like it in elisp. It is not complete yet but I intend to share it here

http://stackoverflow.com/questions/43237699/elisp-more-precise-logarithm-calculation


# Result

I found an alogrithm that seemed really promising at first 

https://math.stackexchange.com/a/999985/440144

However, the algorithm depends on the precision of the numbers it's being calculated with. In theory, with Big Nums the algorithm will work. The problem is that the size of these numbers (in terms of digits) quickly becomes so big it becomes impractical. Therefore, I think I'm just done with this :p
