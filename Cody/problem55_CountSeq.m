function y = problem55_CountSeq(x)
%PROBLEM55_COUNTSEQ Counting Sequence
%
% Given a vector x, find the "counting sequence" y.
%
% A counting sequence is formed by "counting" the entries in a given sequence.
%
% For example, the sequence
%   x = 5, 5, 2, 1, 1, 1, 1, 3
% can be read as
%   Two 5's, one 2, four 1's, one 3
% which translates to
%   y = 2, 5, 1, 2, 4, 1, 1, 3
% So y is the counting sequence for x.
%
% For this problem, all elements in the sequences x and y will be in the range
% from 1 to 9.
sz = length(x);
y = [];
counter = 0;
last = 0;
for c = [x, 0]
  if last ~= c
    if counter > 0
      y = [y, counter, last];
    end
    last = c;
    counter = 0;
  end
  counter = counter + 1;
end
end
