function alpha_list = problem70_alphabetize(list)
%PROBLEM70_ALPHABETIZE Alphabetize by last name
%
% Given a list of names in a cell array, sort the list by the last name.
% So if
%   list = {'Barney Google','Snuffy Smith','Dagwood Bumstead'};
% then the output is
%   alpha_list = {'Dagwood Bumstead','Barney Google','Snuffy Smith'}
[~, list_order] = sort(regexprep(list, '.+ (\w+)$', '$1'));
alpha_list = list(list_order);
end
