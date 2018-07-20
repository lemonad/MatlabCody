function b = problem44_removeSpaces(a)
%PROBLEM44_REMOVESPACES Trimming Spaces
%
% Given a string, remove all leading and trailing spaces (where space is
% defined as ASCII 32).
%
%  Input  a = ' singular value decomposition  '
%  Output b is 'singular value decomposition'
b = strip(a, ' ');
end
