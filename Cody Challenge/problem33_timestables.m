function m = problem33_timestables(n)
%PROBLEM33_TIMESTABLES Create times-tables
%
% At one time or another, we all had to memorize boring times tables. 5 times 5
% is 25. 5 times 6 is 30. 12 times 12 is way more than you think.
%
% With MATLAB, times tables should be easy! Write a function that outputs times
% tables up to the size requested.
%
% Example:
%   Input n = 5
%   Output m is [ 1     2     3     4     5
%                 2     4     6     8    10
%                 3     6     9    12    15
%                 4     8    12    16    20
%                 5    10    15    20    25 ]
m = (1:n) .* (1:n)';
end
