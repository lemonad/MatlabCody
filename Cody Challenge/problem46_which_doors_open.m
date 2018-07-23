function y = problem46_which_doors_open(n)
%PROBLEM46_WHICH_DOORS_OPEN Which doors are open?
%
% There are n doors in an alley. Initially they are all shut. You have been
% tasked to go down the alley n times, and open/shut these doors in a
% particular manner:
%
% * Toggle the state of each door you visit. That is, if the door is shut,
%   open it, and if the door is open, shut it.
% * On the i-th trip down the alley, start with door i and visit every i-th
%   door.
%
% Given n doors, return the list of open doors.
%
% Example:
%   Let's say n = 3.
%
%   * On your first trip, you start from the first door and toggle every door.
%   Now all three doors are open.
%   * On your second trip, you start from the second door and toggle every
%     other door. Since there are only three doors, this means you shut the
%     second door. Now doors 1 and 3 are open.
%   * On your third trip, you start from the third door and toggle every third
%     door. Now only door 1 is open.
%
% So:
%   Input  n = 3
%   Output y is 1
doors = false(n, 1);
r = 1:n;
for i = r;
  doors(i:i:n) = ~doors(i:i:n)
end
y = r(doors);
end
