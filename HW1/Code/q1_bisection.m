clear all;

f = inline('x.^2 + sin(x) - exp(x)/4 - 1', 'x');

tol = 0.00001;
a = -2;
b = 0;
c = 0;
d = 2;

while abs(f(b)) > tol
    m = (b+a)/2;
    if f(a)*f(m) < 0
        b = m;
    else
        a = m;
    end
end
disp(m);

while abs(f(c)) > tol
    m = (d+c)/2;
    if(f(c)*f(m) < 0)
        d = m;
    else
        c = m;
    end
end
disp(m);