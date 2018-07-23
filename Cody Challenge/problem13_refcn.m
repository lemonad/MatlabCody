function s2 = problem13_refcn(s1)
%REFCN Problem 13. Remove all the consonants
% Remove all the consonants in the given phrase.
%
% Example:
% Input  s1 = 'Jack and Jill went up the hill'; 
% Output s2 = 'a a i e u e i';
s2 = regexprep(s1, '(?i:[BCDFGHJKLMNPQRSTVWYX]*)', '');
end

