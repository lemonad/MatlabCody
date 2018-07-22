function [len, d] = problem84_divisor_run(a)
%PROBLEM84_DIVISOR_RUN Longest Divisor Run
%
% Given the vector a, find the longest run of consecutive numbers that can be
% evenly divided by the same number d where d > 1.
%
% Example:
%   Input  a = [5 4 2 8 3 7 14]
%   Output len is 3, d is 2 
% The last two numbers, 7 and 14, are divisible by 7, but the run of numbers
% [4 2 8] are all divisible by 2. So the longest run is 3. You can assume
% that d is unique.
p = primes(max(a));
len = 0;
d = 0;
for i = p
  x = rem(a, i) > 0;
  m = max(strlength(regexp(num2str(x')', '(0+)', 'match')'));
  if m > len
    len = m;
    d = i;
  end
end
end
