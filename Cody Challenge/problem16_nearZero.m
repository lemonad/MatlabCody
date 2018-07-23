function y = problem16_nearZero(x)
%PROBLEM16_NEARZERO Return the largest number that is adjacent to a zero
% Takes a list or array of numbers as input and return the largest number
% that is adjacent to a zero.
%
% This example comes from Steve Eddins' blog: Learning Lessons from a
% One-Liner.
%
% Example:
%   Input  x = [1 5 3 0 2 7 0 8 9 1 0]
%   Output y is 8
%
% Does adjacent to zero include 0 if x = [-1 0 0]? Assume so.
sz = size(x);
z = find(~x);
w = [z - 1, z + 1];
w(w < 1 | w > sz(2)) = [];
y = max(x(w));
end

