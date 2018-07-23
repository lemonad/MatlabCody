function fh2 = problem24_iterate_fcn(fh, n)
%PROBLEM24_ITERATE_FCN Function Iterator
%
% Given a handle fh to a function which takes a scalar input and returns a
% scalar output and an integer n >= 1, return a handle fh2 to a function which
% applies the given function n times.
%
% Examples:
%   >> addOne = @(x)x+1;
%   >> addTen = iterate_fcn(addOne, 10);
%   >> addTen(3)
%   ans = 13
%   >> squarer = @(a) a^2;
%   >> fh2 = iterate_fcn(squarer, 3);
%   >> fh2(3)
%   ans = 6561
%   % Golden Ratio
%   >> fh = @(y)sqrt(y+1);
%   >> fh2 = iterate_fcn(fh,30);
%   >> fh2(1)
%   ans = 1.6180
fh2 = @(x) recur(fh, x, n);

%% More interesting solution (but it seems like `syms` is not allowed):
% syms x;
% f(x) = x;
% for i = 1:n
%   f(x) = f(fh(x));
% end
% fh2 = matlabFunction(f);
end

function y = recur(f, x, n)
%RECUR Applies f to itself n times and returns the result.
  if n < 1
    y = x;
  else
    y = recur(f, f(x), n - 1);
  end
end

