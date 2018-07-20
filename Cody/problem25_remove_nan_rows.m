function A = problem25_remove_nan_rows(A)
%PROBLEM25_REMOVE_NAN_ROWS Remove any row in which a NaN appears
%
% Given the matrix A, return B in which all the rows that have one or more NaNs
% have been removed. So for
%   A = [  1   5   8
%         -3 NaN  14
%          0   6 NaN ];
% then
%   B = [  1   5   8 ]
A(sum(isnan(A), 2) > 0, :) = [];
end

