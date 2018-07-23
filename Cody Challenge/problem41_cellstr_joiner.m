function out_str = problem41_cellstr_joiner(in_cell, delim)
%problem41_cellstr_joiner Cell joiner
%
% You are given a cell array of strings and a string delimiter. You need to
% produce one string which is composed of each string from the cell array
% separated by the delimiter.
%
% For example, this input
%   in_cell = {'Lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur'};
%   delim = ' ';
% should produce this output:
%   out_str = 'Lorem ipsum dolor sit amet consectetur';
out_str = strjoin(in_cell, delim)
end
