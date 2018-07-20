function [r, c] = problem50_qwerty_coord(key)
%PROBLEM50_QWERTY_COORD QWERTY coordinates
%
% Given a lowercase letter or a digit as input, return the row where that
% letter appears on a standard U.S. QWERTY keyboard and its position starting
% from the leftmost digit or letter on that row.
%
% Examples:
%   Input  key = 'a'
%   Output r = 3
%          c = 1
%   Input  key = '0'
%   Output r = 1
%          c = 10
%   Input  key = 'y'
%   Output r = 2
%          c = 6
keys = {'1234567890'; 'qwertyuiop'; 'asdfghjkl'; 'zxcvbnm'};
x = contains(keys, key);
r = (1:4) * x;
c = strfind(char(keys(r)), key);
end
