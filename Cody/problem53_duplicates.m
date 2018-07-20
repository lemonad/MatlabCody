function dups = problem53_duplicates(strs)
%PROBLEM53_DUPLICATES Duplicates
%
% Write a function that accepts a cell array of strings and returns another
% cell array of strings with only the duplicates retained.
%
% Examples:
%   Input  strs = {'a','b','a'}
%   Output dups is 'a'
%   Input  strs = {'a','b','c'}
%   Output dups is Empty cell array: 0-by-1
sz = length(strs);
[~, b] = intersect(strs, unique(strs));
dups = unique(strs(setdiff(1:sz, b)));
end
