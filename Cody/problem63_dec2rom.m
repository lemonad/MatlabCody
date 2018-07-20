function romStr = problem63_dec2rom(n)
%PROBLEM63_DEC2ROM Encode Roman Numerals
%
% Create a function taking a non-negative integer as its parameter and
% returning a string containing the Roman Numeral representation of that
% integer.
%
% By convention, "modern" Roman numerals are written by expressing each digit
% separately starting with the leftmost digit and skipping any digit with a
% value of zero.
%
% Examples
%   If n is 1990 then romStr = 'MCMXC' since 1000=M, 900=CM, 90=XC.
%   If n is 2008 then romStr = 'MMVIII' since 2000=MM, 8=VIII.
%   If n is 1666 then romStr = 'MDCLXVI'.
%   If n is 0 then romStr is empty ([] and '' are both acceptable)
%
% n will always be an integer between 0 and 3999 (inclusive).
%
% This problem is adapted from Rosetta Code.
romans = ['M', 'D', 'C', 'L', 'X', 'V', 'I'];

% Separating out the 1000's handles roman numerals > 3999.
d = floor(n / 1000);
n = n - d * 1000;
romStr = repelem('M', d);

weight = 100;
for offset = 2:2:7
  d = floor(n / weight);
  n = n - d * weight;
  if d == 9
    romStr = [romStr, romans(offset + 1), romans(offset - 1)];
  elseif d > 4
    romStr = [romStr, romans(offset), repelem(romans(offset + 1), d - 5)];
  elseif d == 4
    romStr = [romStr, romans(offset + 1), romans(offset)];
  else
    romStr = [romStr, repelem(romans(offset + 1), d)];
  end

  weight = weight / 10;
end
end
