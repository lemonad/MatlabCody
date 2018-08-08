function y = problem1323_altsum(x)
%PROBLEM1323_ALTSUM Alternating sum
%
% Given vector x, calculate the alternating sum
%    y = x(1) - x(2) + x(3) - x(4) + ...
y = sum(x(1:2:end)) - sum(x(2:2:end));
end
