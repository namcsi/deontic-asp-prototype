% This metaprogram implements a stripped down version of deontic ASP.

#include "meta-asp.lp".

%
% Implement operators
%

% formulas
%% formula(O) :- output(O,_).
%% formula(F):- formula(ob(F)).
%% formula(F):- formula(fb(F)).

:- not true(F), not true(-F), true(ob(F)), true(fb(F)).
	 %% formula(ob(F)), formula(fb(F)).
