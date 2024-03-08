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

- $(x_1 + x_2 +...... + x_n)^n = sum_(k)$
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

= Feb 16 2024 -- Proof part 4


- $(1/10^5 sum_(-infinity)^infinity e^(-n^2/10^10))^2 ~= pi$


- What about quantified statements?
- Consider the statement $forall x, P(x) -> Q(x)$


- Converse: $forall x, Q(x) -> P(x)$
- inverse: $forall x, not P(x) -> not Q(x)$
- contrapositive: $forall x not Q(x) -> not (x)$


math club: 5:00 pm m105? floor one of M all the way down on the left.

Exam: 
 - True or False about predicate value of P(1,1), P(2,2), solve if there is a value of P
 - Question aboout sets A = some set
 - (i) is {3} element of A
 - (ii) is {3} element of A
 - Draw a venn diagram for some union or intersection of sets
 - STATEMENT: for any horse H, if H is a palomino, h has a saddle. logic, modus ponens modus tollens
  - be able to write down the converse, contrapositive, and negation of the statement. 
  - Consider the integers a, b: if a > 7 and b > 10 then a+b > 18.
    - let P = "a > 7", q = "b > 10" and r = "a+b > 18"
    - express the statement using p, q, r.
    - convert the statement using OR, write down the negation of a statement as an english sentence
    - calculation using binomial theorem: coefficient or otherwise. $ x^10 $ in $(x^2-1)^8$
    - simple answer, no expansion.
    - an inclusion - exclusion question ( dealing with sets and intersections and things )
    - Question about using truth tables to determine whether two statements involving p, q. r are logically equivalent. 
    - counting questions, how many ways can you select 10 pizzas from 4 choices. 
    - pidgeonhole principle
    - selecting 5 students to represent the class at some presentation, anagram of mississippi


    - Basic logical laws 


    = Feb 26 2024
    - low down triple dealing
    - permutations involving dealing cards


    = Feb 28 2024

    - Relations, binary relations.
    - properties that relations on a set A can have. i

    - aside we aer looking to develop the idea of "sameness" which we will call an "equivalence relation." Clearly we alwyasy want x to be the same as x.
    - reflexive: x $tilde.op$ x
    - Symmetric: we'll say that $tilde.op$ is symmetric if whenever a $tilde.op$ b then b $tilde.op$ a as well
    - transitivity: we call a relation transitive if whenever aRb and bRc, we must have aRc as well. 
    - a symmetric transitive relation on A will have the property that for any a, if there is a 
    b elementof a so that
    - our notion of sameness will be an equivalence relation if it is (i) reflexive, (ii) symmetric, (iii) transitive.


    = March 1 2024
    - A function $F : A -> B$ is a particular kind of realtion on A x B it has the property that for every a, there is exactly one value f(a) $in$ b
    - some particular types of function are quire useful:
      - 1-to-1 injection
      - onto or surjection
      - both, bijection.
      - we say $|A| <= |B|$ if there exists a 1-1 functions $ f : A -> B$ if onto, then $|A| >= |B|$
      - cantor turned the world of mathematics upside down when he proved that there are different sizes of infinity.

    = Cardinalities of sets
    - There are sets bigger than |N|, proven by cantor

    - Proof: take any function $ f : S -> P(S) $ we can construct a subset of s so that for any $a in S , T eq.not f(a)$ if $ a in f(a), a in.not T$

    - Another proof: take any listing of the reals, we construct a number not in the list.

    - Okay there are infinitely many different sizes of infinite sets. 

    - $ |QQ| = |NN| $








