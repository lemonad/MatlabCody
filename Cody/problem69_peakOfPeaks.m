function pmax = problem69_peakOfPeaks(nmax)
%PROBLEM69_PEAKOFPEAKS Find the peak 3n+1 sequence value
%
% A Collatz sequence is the sequence where, for a given number n, the next
% number in the sequence is either n/2 if the number is even or 3n+1 if the
% number is odd. See Problem 21 for more information.
%
% Let c(n) be the sequence for n, and p(n) be the peak value of that sequence.
% For a given threshold nmax, find the highest peak value max(p(n)) for all
% Collatz sequences starting with integers between 1 and nmax.
M = containers.Map('KeyType', 'uint32', 'ValueType', 'uint32');

for i = 1:nmax
  seq = [1];
  n = i;
  while n ~= 1
    if M.isKey(n)
      break;
    end
    seq = [seq, n];

    if mod(n, 2) == 0
      n = n / 2;
    else
      n = 3 * n + 1;
    end
  end

  peak = max(seq);
  for s = seq
    M(s) = peak;
  end
end
pmax = max(cell2mat(M.values()));
end
