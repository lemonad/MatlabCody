function elapsed = problem62_elapsed_time(d1, d2)
%PROBLEM62_ELAPSED_TIME Elapsed Time
%
% Given two date strings d1 and d2 of the form yyyy/mm/dd HH:MM:SS (assume
% hours HH is in 24 hour mode), determine how much time, in decimal hours,
% separates them. Assume d2 is always later than d1.
%
% Example:
%   Input d1 = '2010/12/14 12:00:00'
%   Input d2 = '2010/12/14 13:06:36'
%   Output elapsed is 1.11
infmt = 'yyyy/MM/dd HH:mm:ss';
elapsed = hours(datetime(d2, 'InputFormat', infmt) - ...
                datetime(d1, 'InputFormat', infmt);
end
