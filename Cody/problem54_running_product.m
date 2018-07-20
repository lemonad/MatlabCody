function i = problem54_running_product(s)
%PROBLEM54_RUNNING_PRODUCT Maximum running product for a string of numbers
%
% Given a string s representing a list of numbers, find the five consecutive
% numbers that multiply to form the largest number. Specifically, given s
% return the index i to the first of those five numbers. You can assume the
% maximum product is unique.
%
% Example:
%   Input  s = '123454321'
%   Output i = 3
% since the product of [3 4 5 4 3] is larger than any of the alternatives.
%
% Inspired by Problem 8 from Project Euler
[~, i] = max(movsum(s - 48, [4 0], 'Endpoints', 'discard'));
end
