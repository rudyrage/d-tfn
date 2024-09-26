male('Ram').
male('Shyam').
male('Arjun').
male('Bijay').
female('Hari').
female('Subhash').
female('Kastuv').

parent('Ram', 'Arjun').
parent('Shyam', 'Bijay').
parent('Hari', 'Arjun').
parent('Subhash', 'Bijay').

sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
grandparent(GP, GC) :- parent(GP, P), parent(P, GC).
cousin(X, Y) :- parent(P1, X), parent(P2, Y), sibling(P1, P2).
