function s2 = problem92_refcn(s1)
%PROBLEM92_REFCN Find state names that start with the letter N
%
% Given a list of US states, remove all the states that start with the letter
% N. If
%   s1 = 'Alabama Montana Nebraska Vermont Nevada';
% then
%   s2 = 'Alabama Montana  Vermont ';
s2 = regexprep(s1, '(New \w+|North \w+|N\w+)', '');
end
