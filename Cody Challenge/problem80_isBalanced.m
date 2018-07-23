function out = problem80_isBalanced(inStr)
%PROBLEM80_ISBALANCED Test for balanced parentheses
%
% Given the input inStr, give the boolean output out indicating whether all the
% parentheses are balanced.
%
% Examples:
%   If inStr is '(()', the output is false.
%   If inStr is '(xyz)(ab)' the output is true.
%   If inStr is ')(', the output is false.
%
% The string may include characters other than ( and ), but you should ignore
% them.
%
% Incidentally, this problem was inspired from the Rosetta Code site. Why not
% create a few problems of your own by poking around the tasks at Rosetta Code?
bal = 0;
for c = inStr
  if c == '('
    bal = bal + 1;
  elseif c == ')'
    bal = bal - 1;
    if bal < 0
      break;
    end
  end
end
out = (bal == 0);
end
