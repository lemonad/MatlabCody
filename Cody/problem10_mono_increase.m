function tf = problem10_mono_increase(x)
%PROBLEM10_MONO_INCREASE Determine whether a vector is monotonically increasing
%
% Return true if the elements of the input vector increase monotonically (i.e.
% each element is larger than the previous). Return false otherwise.
%
% Examples:
%   Input  x = [-3 0 7]
%   Output tf is true
%   Input  x = [2 2]
%   Output tf is false
tf = all(diff(x) > 0);
end
