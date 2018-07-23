function [p1, p2] = problem60_goldbach(n)
%PROBLEM60_GOLDBACH The Goldbach Conjecture
%
% The Goldbach conjecture asserts that every even integer greater than 2 can be
% expressed as the sum of two primes.
%
% Given the even integer n, return primes p1 and p2 that satisfy the condition
% n = p1 + p2. Note that the primes are not always unique. The test is not
% sensitive to order or uniqueness. You just need to meet the appropriate
% conditions.
%
% Example:
%   Input  n = 286
%   Output (any of the following is acceptable) 
%          [  3 283]
%          [283   3]
%          [  5 281]
%          [107 179]
%          [137 149]
p = primes(n);
for i = p
  for j = p
    if (i + j) == n
      p1 = i;
      p2 = j;
      return
  end
end
end
