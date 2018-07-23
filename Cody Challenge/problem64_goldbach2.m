function c = problem64_goldbach2(n)
%PROBLEM64_GOLDBACH2 The Goldbach Conjecture, Part 2
%
% The Goldbach conjecture asserts that every even integer greater than 2 can be
% expressed as the sum of two primes.
%
% Given the even integer n, return c, the number of different ways two primes
% can be added to result in n. Only count a pair once; the order is
% unimportant.
%
% Example:
%   Input  n = 10
%   Output c is 2
%   because of the prime pairs [3 7] and [5 5].
%
%   Input  n = 50
%   Output c is 4
%   because of [3 47], [7 43], [13 37], and [19 31].
c = 0;
p = primes(n);
sz = length(p);
for i = 1:sz
  for j = i:sz
    if (p(i) + p(j)) == n
      c = c + 1;
    end
  end
end
end
