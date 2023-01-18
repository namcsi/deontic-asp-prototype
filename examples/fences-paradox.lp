fb(fence) :- not -fb(fence).
ob(white) :- fence, fb(fence).
-fb(fence) :- sea.
fence.

% what happens when we are by the sea?
% sea.
