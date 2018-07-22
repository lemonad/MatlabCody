function x = problem73_replace_nans(x)
%PROBLEM73_REPLACE_NANS Replace NaNs with the number to its left in the row
%
% Replace NaNs with the number that appears to its left in the row.
%
% If there are more than one consecutive NaNs, they should all be replaced by
% the first non-NaN value to the immediate left of the left-most NaN. If the
% NaN is in the first column, default to zero.
%
% For example, if
%   x = [NaN  1   2  NaN NaN 17  3  -4 NaN]
% then
%   y = [ 0   1   2   2   2  17  3  -4  -4]
sz = length(x);
leftval = 0;
for i = 1:sz
  if isnan(x(i))
    x(i) = leftval;
  else
    leftval = x(i);
  end
end
