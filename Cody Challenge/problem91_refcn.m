function a = problem91_refcn(s)
%PROBLEM91_REFCN Get the area codes from a list of phone numbers
%
% Given a string of text with phone numbers in it, return a unique'd cell array
% of strings that are the area codes.
%   s = '508-647-7000, (508) 647-7001, 617-555-1212';
% then
%   a = {'508','617'}
%
% Note: This problem refers to American-style phone numbers. You can assume the
% first three digits of a ten-digit number will always be the area code.
tokens = regexp(strsplit(s, {', ', '; '}), '^[+1\-\(]*(\d{3})', 'tokens');
a = cellstr(unique(string(tokens)));
end
