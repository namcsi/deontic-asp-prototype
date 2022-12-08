forbidden(fence) :- not -forbidden(fence).
obligatory(white) :- fence, forbidden(fence).
-forbidden(fence) :- sea.
fence.

% what happens when we are by the sea?
% sea.
