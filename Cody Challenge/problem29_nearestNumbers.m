function [index1 index2] = problem29_nearestNumbers(A)
%PROBLEM29_NEARESTNUMBERS Nearest Numbers
%
% Given a row vector of numbers, find the indices of the two nearest numbers.
%
% Examples:
%   [index1 index2] = nearestNumbers([2 5 3 10 0 -3.1])
%   index1 = 1
%   index2 = 3
%   [index1 index2] = nearestNumbers([-40 14 22 17])
%   index1 = 2
%   index2 = 4
%
% Notes:
%   * The indices should be returned in order such that index2 > index1.
%   * There will always be a unique solution.
[~, sz] = size(A);
t = abs(repmat(A', 1) - repmat(A, 1));  % Neither dist nor combnk available.
t(logical(triu(ones(sz)))) = nan
[x, y] = min(t);
[~, w] = min(x);

index1 = w;
index2 = y(w);

%% Less interesting but LOWER score solution.
% [~, sz] = size(A);
% m = intmax;
% for i = 1:sz
%   for j = (i + 1):sz
%     a = abs(A(i) - A(j));
%     if a < m
%       m = a;
%       index1 = i;
%       index2 = j;
%     end
%   end
% end
end
