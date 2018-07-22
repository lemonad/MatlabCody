function t = problem71_read_and_interp(s)
%PROBLEM71_READ_AND_INTERP Read a column of numbers and interpolate missing data
%
% Given an input cell array of strings s, pick out the second column and turn
% it into a row vector of data. Missing data will be indicated by the number
% 9999. If you encounter missing data, you should perform linear interpolation
% to the nearest accurate data points (missing data will not occur in the first
% or last element).
%
% The first row is always descriptive text. So if the input cell array s is
%   s = { ...
%      'Day  Temp'
%      '  1   -5'
%      '  2   19'
%      '  3   1'
%      '  4   9999'
%      '  5   3'};
% then the output variable t is the following row vector.
%   t = [-5 19 1 2 3];
% Here's an example of real-world data:
% http://www.ndbc.noaa.gov/view_text_file.php?filename=41nt1h2008.txt.gz&dir=data/historical/stdmet/

% Remove headers.
vstr = split(s(2:end));
% Convert day and temp cols to double.
vals = str2double(vstr(:, end-1:end)');
not9999 = find(vals(2, :) ~= 9999);
t = interp1(not9999, vals(2, not9999), vals(1, :));
end
