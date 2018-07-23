function y = problem15_lengthOnes(x)
%PROBLEM15_LENGTHONES Find the longest sequence of 1's in a binary sequence
% Given a string such as
%
%   s = '011110010000000100010111'
%
% find the length of the longest string of consecutive 1's. In this example,
% the answer would be 4.
%
% Example:
%
%   Input  x = '110100111'
%   Output y is 3
[a, b] = regexp(x, '(1+)');
y = max([-1, b - a]) + 1;
end

