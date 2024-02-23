clear all;
f = @(y, t) y^2 + t^2;
h = 0.1;
t = 1;
y_old = 0;

while t <= 2
    y_new = y_old + h * f(y_old, t);
    t = t + h; 
    y_old = y_new;
end
fprintf("y(2) = %.8f when h = %.1f\n", y_old, h);

h = 0.05;
t = 1;
y_old = 0;
while t <= 2
    y_new = y_old + h * f(y_old, t);
    t = t + h; 
    y_old = y_new;
end
fprintf("y(2) = %.8f when h = %.2f\n", y_old, h);
