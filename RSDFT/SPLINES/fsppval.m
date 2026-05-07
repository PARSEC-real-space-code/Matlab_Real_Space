function y = fsppval(pp,x)
%% y = fsppval(pp,x)
%% evaluates a clamped fspline piecewise polynomial at all points in x.

x_size = size(x);
xq = x(:)';
breaks = pp.breaks;

xq = min(max(xq, breaks(1)), breaks(end));

y = ppval(pp, xq);
y = reshape(y, x_size);
