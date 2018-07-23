function b = problem59_matchPattern(a)
%PROBLEM59_MATCHPATTERN Pattern matching
%
% Given a matrix, m-by-n, find all the rows that have the same "increase,
% decrease, or stay same" pattern going across the columns as the first row
% does. Do not list the row as a match to itself.
%
% Example:
%   Input  a = [1 2 3 0
%               5 6 7 9
%               2 7 8 7]
%   Output b is 3
% since the third column follows the increase-increase-decrease pattern used
% in vector a.
sz = size(a);
x = diff(a(1, :));
x(x > 0) = 1;
x(x < 0) = -1;

b = [];
for i = 2:sz
  y = diff(a(i, :));
  y(y > 0) = 1;
  y(y < 0) = -1;
  if x == y
    b = [b, i];
  end
end
