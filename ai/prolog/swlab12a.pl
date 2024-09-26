:- dynamic edge/2.

edge(a, b).
edge(a, c).
edge(b, d).
edge(c, d).
edge(b, e).
edge(d, f).
edge(e, f).

bfs(Start, Goal, Path) :-
    bfs([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs([[Goal|Visited]|_], Goal, [Goal|Visited]).
bfs([[Current|Visited]|Rest], Goal, Path) :-
    findall(Next, (edge(Current, Next), \+ member(Next, [Current|Visited])), NextNodes),
    add_paths(NextNodes, [Current|Visited], NewPaths),
    append(Rest, NewPaths, UpdatedPaths),
    bfs(UpdatedPaths, Goal, Path).

add_paths([], _, []).
add_paths([H|T], Visited, [[H|Visited]|NewPaths]) :-
    add_paths(T, Visited, NewPaths).
