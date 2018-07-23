function outStr = problem82_remove_small_words(inStr)
%PROBLEM82_REMOVE_SMALL_WORDS Remove the small words from a list of words.
%
% Your job is to tidy up a list of words that appear in a string. The words are
% separated by one or more spaces. Remove all words that are one or two letters
% long and make sure that exactly one space separates all the words. Strings
% will be made up only of letters and spaces. Spaces should not appear at the
% beginning or end of your output string.
%
% Example:
%   inStr =  'ours is  not to   reason why';
%   outStr = 'ours not reason why';
s = strsplit(inStr);
outStr = strjoin(s(strlength(s) > 2));
end
