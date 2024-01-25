#set par(justify: true)
= ECE 3520 - Digital Computer Design - Dr. Ligon


= Formal Grammar
- Formal grammar describes how to form valid strings in a language from an alphabet of symbols.



= Chapter 4 minic and parsing

- Parsing is done recursively via recursive descent.
- recusrion can be right recursive or left recursive.





- Derivation tree
    - takes some program source as input, parsing while applying grammar.
    - forms tree that represents symbols in program and program structure.
    - parser will incrementally build tree, then reduce, and repeat


- Cocke-Younger-Kasami (CYK) Parsing Algorithm
- Informally, this algorithm considers every possible substring of the input string and sets $P[l,s,v]$ to be true if the 
substring of length l starting from $s$ can be generated from the nonterminal $R_v$. once all substrings of length 1 have been considered
then substrings of length 2 are considered. 

- yak is precursor of bison

















