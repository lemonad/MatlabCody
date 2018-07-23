function d = problem93_levenshtein(s1, s2)
%PROBLEM93_LEVENSHTEIN Calculate the Levenshtein distance between two strings
%
% This problem description is lifted from
% http://en.wikipedia.org/wiki/Levenshtein_distance.
%
% The Levenshtein distance between two strings is defined as the minimum number
% of edits needed to transform one string into the other, with the allowable
% edit operations being insertion, deletion, or substitution of a single
% character.
%
% For example, the Levenshtein distance between "kitten" and "sitting" is 3,
% since the following three edits change one into the other, and there is no
% way to do it with fewer than three edits:
%   kitten => sitten  (substitution of 's' for 'k')
%   sitten => sittin  (substitution of 'e' for 'i')
%   sittin => sitting (insert 'g' at the end).
% So when
%   s1 = 'kitten'
% and
%   s2 = 'sitting'
% then the distance d is equal to 3.
n = length(s1);
m = length(s2);
cost = zeros(n + 1, m + 1);
cost(1, :) = 0:m;
cost(:, 1) = 0:n;
for i = 1:n
  for j = 1:m
    if s1(i) == s2(j)
      cost(i + 1, j + 1) = cost(i, j);
    else
      % Insert, remove, replace costs are all 1.
      cost(i + 1, j + 1) = 1 + min([cost(i, j + 1), ...    % up (remove).
                                    cost(i, j), ...        % diag (replace).
                                    cost(i + 1, j)]);      % left (insert).
    end
  end
end
d = cost(end, end);
end
