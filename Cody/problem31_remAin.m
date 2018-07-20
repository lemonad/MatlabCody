function s2 = problem31_remAin(s1)
%PROBLEM31_REMAIN Remove all the words that end with "ain"
%
% Given the string s1, return the string s2 with the target characters removed.
%
% For example, given
%   s1 = 'the main event'
% your code would return
%   s2 = 'the  event'
% Note the 2 spaces between "main" and "event" Only the four letters in the
% word "main" were deleted.
% s2 = join(regexprep(split(s1), '\W*\w+ain\W*$', ''));
s2 = regexprep(s1, '\w*ain(\W+|$)', '$1');
end
