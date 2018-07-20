function y = problem39_threeTimes(x)
%PROBLEM39_THREETIMES Which values occur exactly three times?
%
% Return a list of all values (sorted smallest to largest) that appear exactly
% three times in the input vector x. So if
%   x = [1 2 5 2 2 7 8 3 3 1 3 8 8 8]
% then
%   y = [2 3]
[C, ~, ic] = unique(x);
s = accumarray(ic, 1);
y = C(s==3);
end
