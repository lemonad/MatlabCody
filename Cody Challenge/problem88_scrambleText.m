function sIn = problem88_scrambleText(sIn)
%PROBLEM88_SCRAMBLETEXT It dseon't mettar waht oedrr the lrettes in a wrod are.
%
% An internet meme from 2003 (read more here) asserted that readers are
% relatively insensitive to letter order in words, so long as the first and
% last letters are unchanged.
%
% Given a string of words s, take each word in turn and reverse the order of
% letters 2 through n-1, where n is the length of the words. Non-alphabetic
% characters should remain in place.
%
% So if
%   sIn = 'hello'
% then
%   sOut = 'hlleo'
% And if
%   sIn = 'This is the first time I have used MATLAB.'
% then
%   sOut = 'Tihs is the fsrit tmie I hvae uesd MALTAB.'
[~, b, c] = regexp(sIn, '(\w+)', 'match');
for x = [b; c]
  sIn((x(1) + 1):(x(2) - 1)) = sIn((x(2) - 1):-1:(x(1) + 1));
end
end
