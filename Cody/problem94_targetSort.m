function b = problem94_targetSort(a, t)
%PROBLEM94_TARGETSORT Target sorting
%
% Sort the given list of numbers a according to how far away each element is
% from the target value t. The result should return the list sorted in
% descending order of the absolute value of the difference between a(n) and t.
%
% So if a = [1 2 4 8 17] and t = 12, then the output b should be [1 2 4 17 8].
[~, i] = sort(abs(a - t), 'descend');
b = a(i);
end
