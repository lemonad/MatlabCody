function A = problem19_swap_ends(A)
%PROBLEM19_SWAP_ENDS Swap the first and last columns
%
% Flip the outermost columns of matrix A, so that the first column becomes
% the last and the last column becomes the first. All other columns should
% be left intact. Return the result in matrix B.
%
% If the input has one column, the output should be identical to the input.
%
% Example:
%
%  Input  A =  [ 12  4   7
%                 5  1   4 ];
%  Output B is [  7  4  12 
%                 4  1   5 ];
A(:, [1 end]) = A(:, [end 1]);
end

