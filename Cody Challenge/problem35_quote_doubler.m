function s2 = problem35_quote_doubler(s1)
%PROBLEM35_QUOTE_DOUBLER Quote Doubler
%
% Given a string s1, find all occurrences of the single quote character and
% replace them with two occurrences of the single quote character.
%
% If there are n such occurrences in s1, then s2 will be n characters longer
% than s1.
s2 = regexprep(s1, "'", "''");
end
