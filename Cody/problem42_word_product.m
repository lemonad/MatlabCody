function p = problem42_word_product(s)
%PROBLEM42_WORD_PRODUCT Find the alphabetic word product
%
% If the input string s is a word like 'hello', then the output word product p
% is a number based on the correspondence a=1, b=2, ... z=26. Assume the input
% will be a single word, although it may mixed case. Note that A=a=1 and B=b=2.
%
% So
%   s = 'hello'
% means
%   p = 8 * 5 * 12 * 12 * 15 = 86400
%
% Bonus question: How close can you get to a word product of one million?
p = prod(lower(s) - 96);
end
