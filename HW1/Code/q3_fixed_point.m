clear all;

f = inline('x^3 - 4', 'x');
ga = inline('4/x^2', 'x');
gb = inline('2/sqrt(x)', 'x');
gc = inline('(16+x^3)/5*x^2');

tol = 0.00001;
x = 2;

while abs(f(x)) > tol
    x = gc(x);
    disp(x);
    if x == inf
        break;
    end
end