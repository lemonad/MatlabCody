function ind = problem43_subset_sum(v, n)
%PROBLEM43_SUBSET_SUM Subset Sum
%
% Given a vector v of integers and an integer n, return the indices of v (as a
% row vector in ascending order) that sum to n. If there is no subset in v that
% sums to n, return an empty matrix []. You can assume that the answer will
% always be unique.
%
% Example:
%   >> v = [2, 3, 5];
%   >> n = 8;
%   >> subset_sum(v, n)
%   ans = 2     3
sz = length(v);
for i = 1:2^sz - 1;
  s = logical(dec2bin(i, sz) - '0');
  if sum(v(s)) == n
    ind = find(s);
    return
  end
end
ind = [];
end
