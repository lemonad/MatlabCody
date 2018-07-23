function s2 = problem22_refcn(s1)
%PROBLEM22_REFCN Remove all the vowels
% Remove all the vowels in the given phrase.
%
% Example:
% Input  s1 = 'Jack and Jill went up the hill'
% Output s2 is 'Jck nd Jll wnt p th hll'
s2 = regexprep(s1, '(?i:[AEIOU]*)', '');
end

