clear all;
x = [0.40 1.2 3.4 4.1 5.7 7.2 9.3];
y = [0.70 2.1 4.0 4.9 6.3 8.1 8.9];
z = [0.031 0.933 3.058 3.349 4.870 5.757 8.921];
A = [0 0 0; 0 0 0; 0 0 0];
b = [0 0 0]';
n = length(x);

sum_xx = 0;
sum_yy = 0;
sum_xy = 0;
sum_xz = 0;
sum_yz = 0;
sum_x = 0;
sum_y = 0;
sum_z = 0;

for i = 1:n
    sum_xx = sum_xx + x(i)*x(i); 
    sum_yy = sum_yy + y(i)*y(i);
    sum_xy = sum_xy + x(i)*y(i);
    sum_xz = sum_xz + x(i)*z(i);
    sum_yz = sum_yz + y(i)*z(i);
    sum_x = sum_x + x(i);
    sum_y = sum_y + y(i);
    sum_z = sum_z + z(i);
end

A(1, 1) = sum_xx;
A(1, 2) = sum_xy;
A(1, 3) = sum_x;
A(2, 1) = sum_xy;
A(2, 2) = sum_yy;
A(2, 3) = sum_y;
A(3, 1) = sum_x;
A(3, 2) = sum_y;
A(3, 3) = n;

b(1) = sum_xz;
b(2) = sum_yz;
b(3) = sum_z;

xx = linsolve(A, b);

[X, Y] = meshgrid(0:1:10);
Z = xx(1).*X + xx(2).*Y + xx(3);
plot3(X, Y, Z);
hold on;
scatter3(x, y, z);
