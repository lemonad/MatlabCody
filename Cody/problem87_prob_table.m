function p = problem87_prob_table(x)
%PROBLEM87_PROB_TABLE Indexed Probability Table
%
% This question was inspired by a Stack Overflow question forwarded to me by
% Matt Simoneau.
%
% Given a vector x, make an indexed probability vector p that shows the
% likelihood of each unique element of x occurring. You can assume that x will
% always be composed of integers greater than 0.
%
% For example, if x is [4 4 4 4] then the number 4 is 100% likely to occur and
% no other number has any likelihood of occurring. By convention, p has as many
% elements as the highest number in x. This makes the indexing straightforward.
% So in this case, p = [0 0 0 1]. That is, p(4) = 1, which is to say that 4
% occurs with 100% probability, as noted above. Note that p has no dependence
% on the order of the elements in x.
%
% If
%   x = [1 2 1 2 1 2 1 2 1 2]
% then
%   p = [0.5 0.5].
%
% And if
%   x = [5 5 2 8]
% then
%   p = [0 0.25 0 0 0.5 0 0 0.25]
sz = length(x);
maxval = max(x);
p = zeros(1, maxval);
for i = x
  p(i) = p(i) + 1;
end
p = p / sz;
end
