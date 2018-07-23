function A = problem07_column_removal(A, n)
%PROBLEM07_COLUMN_REMOVAL Column Removal
%
% Remove the nth column from input matrix A and return the resulting matrix in
% output B.
%
% So if
%   A = [1 2 3; 4 5 6];
% and
%   n = 2
% then B is
%   [ 1 3
%     4 6 ]
A(:, n) = [];
end
