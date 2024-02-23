clear all;
format rational;

A = @(h) [1 1 1 1 1; -2*h -h 0 h 2*h; 4*h^2 h^2 0 h^2 4*h^2; -8*h^3 -h^3 0 h^3 8*h^3; 16*h^4 h^4 0 h^4 16*h^4];
B1 = [0 0 2 0 0]';
X1 = linsolve(A(1), B1);

B2 = [0 0 0 6 0]';
X2 = linsolve(A(1), B2);

X1
X2