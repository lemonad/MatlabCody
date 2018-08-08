function y = problem240_euler006(n)
%PROBLEM240_EULER006 Proj. Euler: Problem 6, Natural numbers, squares and sums
%
% The sum of the squares of the first ten natural numbers is,
%
% 1^2 + 2^2 + ... + 10^2 = 385 The square of the sum of the first ten natural
% numbers is,
%
% (1 + 2 + ... + 10)^2 = 55^2 = 3025 Hence the difference between the sum of
% the squares of the first ten natural numbers and the square of the sum is
% 3025 - 385 = 2640.
%
% Find the difference between the sum of the squares of the first N (where N
% is the input) natural numbers and the square of the sum.
%
% Thank you to Project Euler Problem 6: http://projecteuler.net/problem=6
y = sum(1:n)^2 - sum((1:n).^2);
end
