function b = problem75_pal(a)
%PROBLEM75_PAL Find the palindrome
%
% Given the string a, find the longest palindromic sub-string b.
%
% So when
%   a = 'xkayakyy';
% you should return
%   b = 'kayak';
sz = length(a);
llen = 0;
b = '';
for i = 1:sz
  for j = sz:-1:i + llen
    if a(i:j) == a(j:-1:i)
      b = a(i:j);
      llen = j - i + 1;
      break;
    end
  end
end
end
