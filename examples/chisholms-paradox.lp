ob(go).
% conditional obligation O(tell|go) is equivalent to
% following 2 rules per the definition in Pedro's preliminary work.
ob(tell) :- go.
ob(tell) :- ob(go), not -go.
% O(~tell|~go)
fb(tell) :- -go.
fb(tell) :- fb(go), not go.

%-go.
