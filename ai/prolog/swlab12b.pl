:- dynamic edge/2.

edge(a, b).
edge(a, c).
edge(b, d).
edge(c, d).
edge(b, e).
edge(d, f).
edge(e, f).

dfs(Start, Goal, Path) :-
    dfs(Start, Goal, [Start], Path).

dfs(Goal, Goal, Visited, Path) :-
    reverse(Visited, Path).
dfs(Current, Goal, Visited, Path) :-
    edge(Current, Next),
    \+ member(Next, Visited),
    dfs(Next, Goal, [Next|Visited], Path).
