function b = problem48_makingChange(a)
%PROBLEM48_MAKINGCHANGE Making change
%
% Given an amount of currency, return a vector of this form:
%   [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01]
%
% Example:
%   Input a = 257.68
%   Output b is [2 1 0 0 1 1 0 1 0 1 1 3]
% Always use bigger bills/coins if possible.
a = a * 100;  % Since e.g. 135.01 - 100 = 35.0099999999999909.
change = [100 50 20 10 5 2 1 0.5 0.25 0.1 0.05 0.01] * 100;
b = zeros(12, 1);

for i = 1:12
  while a >= change(i)
    a = a - change(i);
    b(i) = b(i) + 1;
  end
end
end
