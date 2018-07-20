function wins = problem58_ticTacToe(a)
%PROBLEM58_TICTACTOE Tic Tac Toe FTW
%
% Given a tic tac toe board:
%    1 represents X
%    0 represents empty.
%   -1 represents O
% It is X's move. If there is an immediate win possibility, choose a square for
% an immediate win. Otherwise return 0.
%
% Return absolute index of the square of choice. If multiple square are valid,
% return them in order.
%
% Example:
%   Input  a = [ 1  0  1
%               -1  1  0
%                0 -1 -1]
%   Output wins is [3 4]
e = find(~a);
wins = [];
for i = e'
  if win(a, i)
    wins = [wins, i];
  end
end
if isempty(wins)
  wins = 0;
end
end

function w = win(a, e)
  a(e) = 1;
  w = max(min(a)) == 1 || max(min(a')) == 1 || ...
      min(a([1 5 9])) == 1 || min(a([3 5 7])) == 1;
end
