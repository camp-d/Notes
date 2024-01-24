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
