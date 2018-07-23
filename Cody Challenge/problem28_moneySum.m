function b = problem28_moneySum(a)
%PROBLEM28_MONEYSUM Counting Money
%
% Add the numbers given in the cell array of strings. The strings represent
% amounts of money using this notation: $99,999.99.
%
% Example:
%   Input a = {'$12,001.87','$0.04','$12,003,887.55','$0.32'};
%   Output b is 12015889.78
b = sum(str2double(replace(a, {',', '$'}, '')));
end
