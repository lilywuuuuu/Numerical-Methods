clear all;

f = inline('x.^2 + sin(x) - exp(x)/4 - 1', 'x');
df = inline('2*x + cos(x) - exp(x)/4', 'x');

tol = 0.00001;
a = -2;
b = 2;

while abs(f(a)) > tol
    a = a - f(a)/df(a);
end
disp(a);

while abs(f(b)) > tol
    b = b - f(b)/df(b);
end
disp(b);