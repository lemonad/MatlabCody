function out = problem14_meanOfPrimes(in)
%PROBLEM14_MEANOFPRIMES Find numeric mean of the prime numbers in a matrix
% (There must be at least one prime in the matrix `in`).
%
% Example:
%
%  Input  in = [ 8 3
%                5 9 ]
%  Output out is 4 or (3+5)/2
r = reshape(in, [], 1);
p = isprime(r);
out = r' * p / sum(p);
end

