function y = problem37_pascalTri(n)
%PROBLEM37_PASCALTRI Pascal's Triangle
%
% Given an integer n >= 0, generate the length n+1 row vector representing the
% n-th row of Pascal's Triangle.
%
% Examples:
%   pascalTri(0)
%   ans = 1
%   pascalTri(1)
%   ans = 1     1
%   pascalTri(2)
%   ans = 1     2     1
A = zeros(n + 3);
A(1, 2) = 1;
for i = 2:n + 1
  for j = 2:n + 2
    A(i, j) = A(i - 1, j - 1) + A(i - 1, j);
  end
end
y = A(n + 1, 2:end - 1);
end
