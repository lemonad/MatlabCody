function y = problem189_sum_int(n)
%PROBLEM189_SUM_INT Sum all integers from 1 to 2^n
%
% Given the number x, y must be the summation of all integers from 1 to 2^x.
% For instance if x=2 then y must be 1+2+3+4=10.
y = 2^n * (2^n + 1) / 2;
end
