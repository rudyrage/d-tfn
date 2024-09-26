location('Tokyo', 'Asia').
location('Beijing', 'Asia').
location('New York', 'North America').

in_asia(X) :- location(X, 'Asia').
