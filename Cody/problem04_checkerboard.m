function a = problem04_checkerboard(n)
%PROBLEM04_CHECKERBOARD Make a checkerboard matrix
%
% Given an integer n, make an n-by-n matrix made up of alternating ones and
% zeros as shown below. The a(1,1) should be 1.
%
% Example:
%   Input  n = 5
%   Output a is [1 0 1 0 1
%                0 1 0 1 0
%                1 0 1 0 1
%                0 1 0 1 0 
%                1 0 1 0 1]
a = ones(n);
a(1:2:n, 2:2:n) = 0;
a(2:2:n, 1:2:n) = 0;
end
