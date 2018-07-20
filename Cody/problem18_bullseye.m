function a = problem18_bullseye(n)
%PROBLEM18_BULLSEYE Bullseye Matrix
%
% Given n (always odd), return output a that has concentric rings of the
% numbers 1 through (n+1)/2 around the center point.
%
% Examples:
%   Input  n = 3
%   Output a is [ 2 2 2
%                 2 1 2
%                 2 2 2 ]
%   Input  n = 5
%   Output a is [ 3 3 3 3 3
%                 3 2 2 2 3
%                 3 2 1 2 3
%                 3 2 2 2 3
%                 3 3 3 3 3 ]
c = (n + 1) / 2;
a = bsxfun(@(x, y) max(abs(c - x), abs(c - y)) + 1, 1:n, (1:n)');
end

