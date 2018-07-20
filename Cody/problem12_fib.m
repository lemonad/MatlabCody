function f = problem12_fib(n)
%PROBLEM12_FIB Fibonacci sequence

% Calculate the nth Fibonacci number.
%
% Given n, return f where f = fib(n) and f(1) = 1, f(2) = 1, f(3) = 2, ...
%
% Examples:
%
%  Input  n = 5
%  Output f is 5
%  Input  n = 7
%  Output f is 13
x = zeros(n, 1); x(1) = 1;
fibseq = filter(1, [1 -1 -1], x);
f = fibseq(end);
end

