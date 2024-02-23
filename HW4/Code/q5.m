clear all;
format default;
f = @(x) 1/x^2;
a = 0.2;
b = 1;
n = 2;
sum = 1;
new_sum = 0;

while(abs(new_sum - sum) > 0.02)
    sum = new_sum;
    new_sum = 0;
    h = (b-a)/n;
    for i= 0 : n-1 
        new_sum = new_sum + h/2*(f(a + i*h) + f(a + (i+1)*h));
    end
    n = n*2;
end

fprintf("The integral = %.4f and h = %.4f\n", new_sum, h);