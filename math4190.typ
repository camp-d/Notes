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

$365!/(365^k( 365-k )!)$

who was pingala? where did he live?

= Jan 29 2024 -- Binomial Coefficients, Pascal's Triangle, 

- Recall: $ vec(n, k) = n!/((n-k)!k!)$

$(1+x)^(n+1) = (1+x)(1+x^n) = sum_(k=0)^n 1 + x vec(n, k) x^k$

-Binomial Theorem

$(x+y)^n = sum_(k=0)^n vec(n, k)x^k$


= Jan 31 2024 -- Combinations and Permutations


- How many way to write, with repetition, k numbers from 1 to n if 
  + The order we write them is irreleveant
  + The order we write them is releveant
- We regard 122, 212, 221 as the same object. 


- Stars and bar approach
  - any string of k stars and n-1 bars | will convert to a strings of k 1's, 2'1, ... n's
  - There are n+k-1 positions in which to place k stars and n-1 |'s

  - There are $vec(n+k-1,k)$ ways to pick the k positions where the stars should be. 

  - More formally..... Hopefully.... There are n-1 positions we need to pick to plave the |'s so
  $vec(n+k-1, n-1)$ ways to do it

  - $vec(n+k-1, k) = (n+k-1)!/(k!(n-1!)) = vec(n+k-1, n-1)$


= N Choose K formula

- $vec(n,k) = n!/((n-k!)k!)$

  - How many anagrams of MAIM 
    MAIM
    MAMI
    AMMI
    MMAI
    IMMA
    IMAM
    IAMM
    MIMA
    AMIM

  - How many anagrams of MISSISSIPPI?
   11! permutations for distinguishing between MISSISSIPPI (order matters)

= Multinomial Coeficcient

- numbers of  the form $ n!/(i_1 ! i_2 ! .... i_k !) $ are sometimes written $vec(n, i_1 i_2 ... i_k)$
and are known as multinomial coeficcients. 

- $(x_1 + x_2 +...... + x_n)^n = sum_(k$
- 4^11 know the difference

= Feb 5 2024

- Something something, thomas jefferson cryptography.
- william tut in something park britian who gives a shit

= Proofs.... Finally
- How do we prove things?
- Write down careful definitions
- keep track of axioms/given information/assumptions
- Build sequence of deductions to arrivev at the desired result. 

- quest of the peacock: good book, lots of epic virtue signaling #emoji.face.cry

= Feb 12 2024 -- Proofs part 2 (3 technically)

- Hypothesis: Every integer greater than 2 is divisible by a prime number.



= Feb 16 2024 -- 
















