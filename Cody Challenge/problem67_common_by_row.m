function y = problem67_common_by_row(x)
%PROBLEM67_COMMON_BY_ROW Find common elements in matrix rows
%
% Given a matrix, find all elements that exist in every row.
%
% For example, given
%   A =
%       1 2 3 5
%       9 2 5 9
%       3 2 5 9
%       1 2 1 5
%       5 1 3 2
% the answer would be the vector '2 5'. Elements should be returned sorted
% ascending.
%
% Note there is no guarantee that there are any such elements; if there are
% none, the routine should return the empty set. Also, the matrix might contain
% NaNs, repeats, or very large or very small elements.
y = [];
if isempty(x)
  return
end

[sz, ~] = size(x);
for i = unique(x(1, :))
  [rows, ~, ~] = find(x==i);
  if length(unique(rows)) == sz
    y = [y, i];
  end
end
y = sort(y);
end
