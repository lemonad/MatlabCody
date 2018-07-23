function t = problem05_triangle(n)
%PROBLEM05_TRIANGLE Triangle Numbers
%
% Triangle numbers are the sums of successive integers. So 6 is a triangle
% number because
%   6 = 1 + 2 + 3
% which can be displayed in a triangular shape like so
%       *
%      * *
%     * * * 
% Thus 6 = triangle(3). Given n, return t, the triangular number for n.
%
% Example:
%   Input  n = 4
%   Output t is 10
t = sum(1:n)
end
