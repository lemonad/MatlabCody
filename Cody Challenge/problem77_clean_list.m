function names_out = problem77_clean_list(names_in)
%PROBLEM77_CLEAN_LIST Clean the List of Names
%
% Given a list of names in a cell array, remove any duplications that result
% from different capitalizations of the same string. So if
%   names_in = {'bert','arthur','Bert','Fred'};
% the
%   names_out = clean_list(names_in)
% results in
%   names_out = {'bert','arthur','Fred'};
%
% Always take the first occurrence of the duplicated string.
[~, order] = unique(lower(names_in));
names_out = names_in(sort(order));
end
