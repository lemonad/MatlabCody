function y = problem06_everyOther(x)
%PROBLEM06_EVERYOTHER Select every other element of a vector
%
% Write a function which returns every other element of the vector passed in.
% That is, it returns the all odd-numbered elements, starting with the first.
%
% Examples:
%   Input  x = [1 3 2 4 3 5]
%   Output y is [1 2 3]
%   Input  x = [5 9 3 2 2 0 -1]
%   Output y is [5 3 2 -1]
y = x(1:2:end);
end
