function polyOut = problem85_find_stable(polyIn)
%PROBLEM85_FIND_STABLE Remove polynomials with positive real elems of their roots
%
% The characteristic equation for a dynamic system is a polynomial whose roots
% indicate its behavior. If any of the roots of the polynomial have a positive
% real part, the behavior of the system will be divergent. Given a cell array
% of vectors that represent polynomials, remove the ones that have roots with
% positive real components.
%
% Example:
%   polyIn = {[1 1],[1 -1]}
%   polyOut = {[1 1]}
%   since roots([1 -1]) is 1, a positive number.
sz = size(polyIn);
l = true(sz);
for i = 1:max(sz)
  roots(polyIn{i});
  if roots(polyIn{i}) > 0
    l(i) = false;
  end
end
polyOut = polyIn(l');
end
