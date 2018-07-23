function r = problem32_fullest_row(a)
%PROBLEM32_FULLEST_ROW Most nonzero elements in row
%
% Given the matrix a, return the index r of the row with the most nonzero
% elements. Assume there will always be exactly one row that matches this
% criterion.
%
% Example:
%   Input  a = [ 1 2 0 0 0
%                0 0 5 0 0
%                2 7 0 0 0
%                0 6 9 3 3 ]
%   Output r is 4
[rows, ~] = find(a);
[~, i] = max(sum(rows==rows'));
r = rows(i);
end
