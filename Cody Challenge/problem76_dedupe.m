function b = problem76_dedupe(a)
%PROBLEM76_DEDUPE De-dupe
%
% Remove all the redundant elements in a vector, but keep the first occurrence
% of each value in its original location. So if
%   a = [5 3 6 4 7 7 3 5 9]
% then
%   dedupe(a) = [5 3 6 4 7 9]
[~, order] = unique(a);
b = a(sort(order));
end
