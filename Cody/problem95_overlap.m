function s3 = problem95_overlap(s1, s2)
%PROBLEM95_OVERLAP Given two strings, find the maximum overlap
%
% Given two strings s1 and s2, create a new string s3 which is as short as
% possible and contains both strings.
%
% If
%   s1 = [1 2 3 4 5]
% and
%   s2 = [5 4 3 2]
% then
%   s3 = [1 2 3 4 5 4 3 2]
%
% There is guaranteed to be one best solution.
s1len = length(s1);
s2len = length(s2);
minlen = min(s1len, s2len);

% Left side of s2:
for i = (minlen- 1):-1:0
  % i
  % s1(end - i + 1:end)
  % s2(1:i)
  if s1(end - i + 1:end) == s2(1:i)
    break
  end
end

% Right side of s2:
for j = (minlen - 1):-1:0
  % j
  % s1(1:j)
  % s2(end - j + 1:end)
  if s1(1:j) == s2(end - j + 1:end)
    break
  end
end

% S1 inside s2 or s2 inside s1.
if s1len > s2len
  for k = 1:(s1len - s2len + 1)
    if s2(1:end) == s1(k:(k + s2len - 1))
      s3 = s1;
      return
    end
  end
else
  for k = 1:(s2len - s1len + 1)
    if s1(1:end) == s2(k:(k + s1len - 1))
      s3 = s2;
      return
    end
  end
end

if i > j
  s3 = [s1(1:end - i), s2];
else
  s3 = [s2(1:end - j), s1];
end
end
