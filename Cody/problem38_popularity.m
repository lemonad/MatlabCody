function y = problem38_popularity(x)
%PROBLEM38_POPULARITY Return a list sorted by number of occurrences
%
% Given a vector x, return a vector y of the unique values in x sorted by the
% number of occurrences in x.
%
% Ties are resolved by a sort from lowest to highest.
%
% So if
%   x = [1 2 2 2 3 3 7 7 93]
% then
%   y = [2 3 7 1 93]
[C, ~, ic] = unique(x);
s = accumarray(ic, 1);
[~, w] = sort(s, 'descend');
y = C(w);
end
