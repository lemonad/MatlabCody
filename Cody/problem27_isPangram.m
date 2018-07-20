function tf = problem27_isPangram(s)
%PROBLEM27_ISPANGRAM Pangrams!
%
% A pangram, or holoalphabetic sentence, is a sentence using every letter of
% the alphabet at least once.
%
% Example:
%   Input  s = 'The quick brown fox jumps over the lazy dogs'
%   Output tf = true
tf = length(unique(regexprep(lower(s), '\W', ''))) == 26
end

