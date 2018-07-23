function c = problem21_collatz(n)
%PROBLEM21_COLLATZ Return the 3n+1 sequence for n
%
% A Collatz sequence is the sequence where, for a given number n, the next
% number in the sequence is either n/2 if the number is even or 3n+1 if the
% number is odd. The sequence always terminates with 1.
%
% So if
%   n = 13
% then
% c = [13 40 20 10 5 16 8 4 2 1]
c = [];
while n ~= 1
  c = [c n];
  if mod(n, 2)
    n = 3 * n + 1;
  else
    n = n / 2;
  end
end
c = [c 1];
end

