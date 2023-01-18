% implement standard ASP semantics.

conjunction(B) :- literal_tuple(B),
        hold(L) : literal_tuple(B, L), L > 0;
    not hold(L) : literal_tuple(B,-L), L > 0.

body(normal(B)) :- rule(_,normal(B)), conjunction(B).
body(sum(B,G))  :- rule(_,sum(B,G)),
    #sum { W,L :     hold(L), weighted_literal_tuple(B, L,W), L > 0 ;
           W,L : not hold(L), weighted_literal_tuple(B,-L,W), L > 0 } >= G.

  hold(A) : atom_tuple(H,A)   :- rule(disjunction(H),B), body(B).
{ hold(A) : atom_tuple(H,A) } :- rule(     choice(H),B), body(B).


%
% Connect true/1 with hold/1
% true(O) is derived if atom O is assigned true.
% Similar to hold(L), except that hold ranges over integer representation
% of literals.
%

true(O) :- hold(L), output(O,B), literal_tuple(B,L).
hold(L) :- true(O), output(O,B), literal_tuple(B,L).

%
% the next rule is also needed to represent the facts
%  O.
% of the input logic program, for which clingo generates
%  output(O,0).
% and no literal_tuple of the form literal_tuple(0,L)
%
% 
true(O) :- output(O,B), not literal_tuple(B,_).

#show.
#show T : output(T,B), true(T). 
