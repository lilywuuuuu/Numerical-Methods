clear all;

f = inline('x.^2 + sin(x) - exp(x)/4 - 1', 'x');

tol = 0.00001;
a = -2;
b = 0;
c = 0;
d = 2;

while abs(f(b)) > tol
    b = b - f(b)*(a-b)/(f(a)-f(b));
end
disp(b);

while abs(f(c)) > tol
    c = c - f(c)*(c-d)/(f(c)-f(d));
end
disp(c);