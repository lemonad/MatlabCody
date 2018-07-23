function b = problem20_sumDigits(n)
%PROBLEM20_SUMDIGITS Summing digits
%
% Given n, find the sum of the digits that make up 2^n.
%
% Example:
%   Input  n = 7
%   Output b = 11
% since 2^7 = 128, and 1 + 2 + 8 = 11.
b = sum(num2str(2^n) - 48);
end

