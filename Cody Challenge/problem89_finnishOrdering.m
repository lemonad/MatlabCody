function b = problem89_finnishOrdering(a)
%PROBLEM89_FINNISHORDERING Counting in Finnish
%
% Sort a vector of single digit whole numbers alphabetically by their name, in
% Finnish.
%
% See the Wikipedia page for Finnish numerals for reference:
% http://en.wikipedia.org/wiki/Finnish_numerals
%
% Example:
%   Input a = [3 5 0]
%   Output b is [3 0 5]
% In Finnish 3 is kolme, 5 is viisi, and 0 is nolla. In alphabetic order of
% their Finnish spelling, these numbers would go kolme, nolla, viisi, or 3 0 5.
f = 'nolla yksi kaksi kolme neljä viisi kuusi seitsemän kahdeksan yhdeksän';
sf = strsplit(f);
[~, order] = sort(sf(a + 1));
b = a(order);
end
