function s2 = problem78_rot13(s1)
%PROBLEM78_ROT13 Implement a ROT13 cipher
%
% Replace each character in string s1 with the character that is shifted 13
% positions from it (wrap back to the beginning if necessary). So A ? N, B ? O,
% and so on until Y ? L and Z ? M. Case of the output should match the case of
% the input, so a ? n. Non-alphabetic characters are left in place and
% untouched.
%
% If
%   s1 = 'I love MATLAB'
% then
%   s2 = 'V ybir ZNGYNO'
%
% See the Wikipedia article for more info: http://en.wikipedia.org/wiki/ROT13
cindex = lower(s1) - 97;
% Need to subtract cindex so we can add s1 and modulo.
s2 = char(s1 + mod(cindex - 13, 26) - cindex);
% Restore non-letters.
s2(~isletter(s1)) = s1(~isletter(s1));
end
