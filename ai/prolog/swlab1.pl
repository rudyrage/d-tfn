male('Ram').
male('Shyam').
male('Arjun').
female('Hari').
female('Subhash').
female('Bijay').
female('Biraj').
female('Kastuv').

father('Ram', 'Arjun').
father('Shyam', 'Bijay').
father('Kastuv', 'Ram').

mother('Hari', 'Arjun').
mother('Subhash', 'Bijay').

husband('Ram', 'Hari').
sister('Bijay', 'Arjun').
brother('Shyam', 'Bijay').

grandfather('Kastuv', 'Arjun').
grandfather('Kastuv', 'Bijay').

grandson('Arjun', 'Kastuv').
granddaughter('Bijay', 'Kastuv').

sum(X, Y, Result) :- Result is X + Y.
