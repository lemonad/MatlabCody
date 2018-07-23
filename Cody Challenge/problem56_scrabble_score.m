function score = problem56_scrabble_score(str)
%PROBLEM56_SCRABBLE_SCORE Scrabble Scores
%
% Given a word, determine its score in Scrabble.
%
% The input string will always be provided in lower case. Use the English
% language Scrabble letter values as found in this Wikipedia reference: letter
% distributions for English.
%
% Example:
%   Input  str = 'matlab'
%   Output score is 10.
scores = [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, ...
          4, 4, 8, 4, 10];
score = sum(scores(str - 96));
end
