clear all;

f = inline('(x-2).^3*(x-4).^2', 'x');
df = inline('3*(x-2).^2*(x-4).^2 + 2*(x-2).^3*(x-4)', 'x');
x = 5;
tol = 0.00001;

while abs(f(x)) > tol
    x = x - f(x)/df(x);
    disp(x);
end
disp(x);