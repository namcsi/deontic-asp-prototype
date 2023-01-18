fb(walk).
ob(walk_right) :- walk.
walk_right :- walk_right.
ob(walk) :- ob(walk_right).

% What happens if we add walk?
walk.
