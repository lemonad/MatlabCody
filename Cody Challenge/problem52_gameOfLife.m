function B = problem52_gameOfLife(A)
%PROBLEM52_GAMEOFLIFE What is the next step in Conway's Life?
%
% Given a matrix A that represents the state of Conway's game of Life at one
% instant (time t=n), return the matrix B that represents the state of the game
% at the next instant (time t=n+1).
%
% Assume a toroidal game board, so the edges of the matrix wrap left to right
% and top to bottom.
%
% Examples:
%   Input  A = [ 1   1   0   0
%                0   1   0   0
%                1   1   0   0
%                0   0   0   0 ]
%   Output B = [ 1   1   0   0
%                0   0   1   0
%                1   1   0   0
%                0   0   0   0 ]
%   Input  A = [ 0   1   1   0
%                1   1   1   0
%                0   0   1   0
%                0   0   0   0 ]
%   Output B = [ 1   0   1   1
%                1   0   0   0
%                0   0   1   1
%                0   1   1   0 ]
sz = size(A);
% Create mask that will be shifted over A.
x = false(sz);
x(1:3, 1:3) = true;
x(2, 2) = false;

B = A;
for r = 1:sz(1)
  for c = 1:sz(2)
    n = sum(sum(A(circshift(x, [r, c] - 2))));
    % 2 neighbours: keep state
    % 3 neighbours: alive
    % other       : dead
    B(r, c) = (A(r, c) & n == 2) | n == 3;
  end
end
end
