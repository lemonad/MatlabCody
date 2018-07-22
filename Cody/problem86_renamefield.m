function structIn = problem86_renamefield(structIn, oldField, newField)
%PROBLEM86_RENAMEFIELD Renaming a field in a structure array
%
% MATLAB has a setfield and a rmfield, but not a "rename field". You need to
% write one for this problem.
%
% Example
%   Suppose
%     s(1).foo = 1;
%     s(1).bar = 'one';
%     s(2).foo = 2;
%     s(2).bar = 'two';
%   and you want the field "bar" to be renamed "baz". Given the inputs s,
%   oldField, and newField, you must return this output structure with all the
%   data still in place:
%     s(1).foo = 1;
%     s(1).baz = 'one';
%     s(2).foo = 2;
%     s(2).baz = 'two';
%
% [Problem from Matthew Simoneau]
sz = length(structIn);
for i = 1:sz
  v = getfield(structIn, {i}, oldField);
  structIn = setfield(structIn, {i}, newField, v);
end
structIn = rmfield(structIn, oldField);
end
