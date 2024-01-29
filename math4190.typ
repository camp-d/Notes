#set par(justify: true)

= Math 4190 Spring 2024 - Dr. Neil Calkin

= Properties of sets

+ Counting and Sets

$ A = (A - B) union (A sect B) $
$ B = (B - A) union (A sect B) $

$ |A union B| = |A| + |B| - |A sect B|$

formulas for cardinalities of unions/intersections of sets

$ |A union B| = |A| + |B| - |A sect B|$
$ |A union B union C| = |A| + |B| + |C| - |A sect B| - |A sect C| - |B sect C| + |A union B union C|$

general formula for set union intersection

$ | A_1 union A_2 union ..... union A_n | = sum_(i=1)^n |A_i| - sum_(i<j) | A_i sect A_j | 
+ sum_(i < j < k) |A_i sect A_j sect A_k| - ...$

= Pidgeonhole principle

if you place n+1 pieces of mail into n mailboxes, then at least one mailbox will have more than one
    piece of mail

Generalised Pigeonhole Principle. if $ |A| > k * |B| $ then for every total function $f : A -> B$
maps at least $k+1$ different elements to the same element of B.

= chess problem
- claim: for any coloring of a chessboard with different colors, we can find a rectangle so that the squares in the corners of the rectangle are all the same color. 

= six people at a party problem
- among any six people some have shaken hands (red edge) some have not shaken hands (blue edge)

= Combinations and Permutations 


I am a combinatorist by training, my phd is in combinatorics. I have never said the word k-comb/perm in anger except to say that it makes em angry. 

Given a finite set of n values ${a_1, a_2, a_3,...,a_n}$

a k-permutation of n objects is a list with or without repetition of k values from the set. 

a k-combination is the unordered version of the same if repetition if not allowed it is a k-subset. 
- if repetition is not allowed it is a k-subset
- if repetition is allowed it is a k-multisubset


$ vec(n, k) = n!/((n-k)!k!)$



- Birthday Paradox
- with 23 people in a room, you have a 50% chance of having 2 people with the same birthday.


$365!/(365^k(365-k)!)$



who was pingala? where did he live?








