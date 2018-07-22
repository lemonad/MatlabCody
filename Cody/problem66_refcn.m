function s2 = problem66_refcn(s1)
%PROBLEM66_REFCN Find the two-word state names
%
% Given a list of states, remove all the states that have two-word names.
%
% If
%   s1 = 'Alabama Montana North Carolina Vermont Nevada'; 
% then
%   s2 = 'Alabama Montana  Vermont Nevada';
s2 = regexprep(s1, '(North|South|West|New|Rhode) \w+', '')
end
