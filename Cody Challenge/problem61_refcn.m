function s2 = problem61_refcn(s1)
%PROBLEM61_REFCN Find state names that end with the letter A
%
% Given a list of US states, remove all the states that end with the letter A.
%
% Example:
%   Input  s1 = 'Alabama Montana Nebraska Vermont Nevada'; 
%   Output s2 is '   Vermont '; 
s2 = regexprep(s1, ['([a-z]+a|North Carolina|North Dakota|South Carolina|' ...
                    'South Dakota|West Virginia)(\s|$)'], '$2', 'ignorecase');
end
