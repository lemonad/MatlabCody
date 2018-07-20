function y = problem36_common_by_row(A)
%PROBLEM36_COMMON_BY_ROW Find relatively common elements in matrix rows
%
% You want to find all elements that exist in greater than 50% of the rows in the matrix.
%
% For example, given
%   A =
%       1 2 3 5
%       9 2 5 9
%       3 2 5 8
%       1 2 1 5
%       5 1 3 2
% the answer would be the row vector
%   [1  2  3  5]
% since each of these appears three or more times in the rows of matrix A.
% Elements should be returned sorted ascending.
%
% Note there is no guarantee that there are any such elements; if there are
% none, the routine should return the empty set. Also, the matrix might contain
% repeats, very large or very small numbers, or NaNs (though NaN should not be
% treated as a number to be returned in the output).
[rows, ~] = size(A);
[C, ia, ic] = unique(A);
s = accumarray(ic, 1);
y = sort(C(s > (rows / 2)))';
if isempty(y)
  y = [];
end
end
