function tf = problem74_isBalanced(n)
%PROBLEM74_ISBALANCED Balanced number
%
% Given a positive integer find whether it is a balanced number. For a balanced
% number the sum of first half of digits is equal to the second half.
%
% Examples:
%   Input  n = 13722 
%   Output tf is true
%   because 1 + 3 = 2 + 2.
%
%   Input  n = 23567414
%   Output tf = true
%
% All palindrome numbers are balanced.
%
% This is partly from Project Euler, Problem 217.
s = num2str(n) - 48;
sz = floor(length(s) / 2);
tf = sum(s(1:sz)) == sum(s(end - sz + 1:end));
end
