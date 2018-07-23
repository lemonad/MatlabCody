function A = problem34_binary_numbers(n)
%PROBLEM34_BINARY_NUMBERS Binary numbers
%
% Given a positive, scalar integer n, create a (2^n)-by-n double-precision
% matrix containing the binary numbers from 0 through 2^n-1. Each row of the
% matrix represents one binary number. For example, if n = 3, then your code
% could return
%   >> binary_numbers(3)
%   ans =
%        1     1     1
%        0     0     0
%        0     1     1
%        0     1     0
%        0     0     1
%        1     0     0
%        1     1     0
%        1     0     1
% The order of the rows does not matter.
A = dec2bin(0:2^n - 1, n) - 48;
end
