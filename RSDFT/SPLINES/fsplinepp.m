function pp = fsplinepp(z,c,d,xi)
%% pp = fsplinepp(z,c,d,xi)
%% converts fspline coefficients to a MATLAB piecewise polynomial.

xi = xi(:)';
z = z(:)';
c = c(:)';
d = d(:)';

h = xi(2:end) - xi(1:end-1);

coefs = [ ...
    ((z(2:end) - z(1:end-1)) ./ h).' ...
    (3*z(1:end-1)).' ...
    (d(1:end) - c(1:end) - 3*h.*z(1:end-1)).' ...
    (z(1:end-1).*h.^2 + c(1:end).*h).' ...
];

pp = mkpp(xi, coefs);
