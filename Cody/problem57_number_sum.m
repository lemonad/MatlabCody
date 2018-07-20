function total = problem57_number_sum(str)
%PROBLEM57_NUMBER_SUM Summing Digits within Text
%
% Given a string with text and digits, add all the numbers together.
%
% Examples:
%   Input str = '4 and 20 blackbirds baked in a pie'
%   Output total is 24
%   Input str = '2 4 6 8 who do we appreciate?'
%   Output total is 20
m = regexp(str, '([0-9]+)', 'match')
total = sum(str2double(m'));
end
