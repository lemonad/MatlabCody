function result = problem90_c4winner(b)
%PROBLEM90_C4WINNER Connect Four Win Checker
%
% Connect Four is a game where you try to get four pieces in a row. For this
% problem, you are given a grid of numbers that represents a game between Mr.
% One and Mr. Two. Your job is to return 1 if Mr. One wins, 2 if Mr. Two wins,
% and 0 if there is no winner yet. There will never be a two-winner state.
%
% Note that this is a generalized game of Connect Four in which the board might
% vary in dimension (it is guaranteed to be 4 or greater in each dimension).
% Also in Connect Four the pieces fall to the bottom of the grid, but in this
% problem the pieces can appear in any position.
%
% Example
%   In the board below, the pieces are 1s and 2s. Empty spots are zeros. Mr.
%   Two wins because the third column has four consecutive twos. So the output
%   of your function should be 2.
%
%   b = [0 1 1 0 2;
%        0 1 2 2 1;
%        1 0 2 2 2;
%        1 1 2 2 1;
%        1 1 2 1 0];
result = 0;

for i = 1:2
  sz = size(b);

  % Diagonals.
  for d = (4 - sz(1)):(sz(1) - 4)
    win = check(diag(b, d));
    if win ~= 0
      result = win;
      return
    end
  end
  
  % Columns.
  for c = 1:sz(2)
    win = check(b(:, c));
    if win ~= 0
      result = win;
      return
    end
  end

  % Rows.
  for r = 1:sz(1)
    win = check(b(r, :));
    if win ~= 0
      result = win;
      return
    end
  end

  b = rot90(b);
end
end

function win = check(row)
  win = 0;
  sz = length(row);
  for i = 1:(sz - 3)
    if length(unique(row(i:(i + 3)))) == 1
      win = row(i);
      return
    end
  end
end
