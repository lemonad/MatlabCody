function total = problem49_no_digit_sum(n, m)
%PROBLEM49_NO_DIGIT_SUM Sums with Excluded Digits
%
% Add all the integers from 1 to n in which the digit m does not appear.
% m will always be a single digit integer from 0 to 9.
%
%   no_digit_sum(10,1) = 44
% because 1 and 10 are excluded from the sum and
%   sum(2:9) = 44
x = 1:n;
total = sum(x(~contains(string(num2str(x')), num2str(m))));
end
