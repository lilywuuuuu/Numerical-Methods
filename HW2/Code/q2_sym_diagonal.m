clear all;

% Put the symmetric matrix into a compacting form
A = [-1 4; -1 4; -1 4; -1 4; -1 4; -1 4];
B = [100 200 200 200 200 100]';
n = length(B);

% Modify the matrix
for i=2:n
    A(i, 2) = A(i, 2) - A(i, 1)*A(i-1, 1)/A(i-1, 2);
    B(i) = B(i) - A(i, 1)*B(i-1)/A(i-1, 2);
end

% Backward substitution
x = zeros(n, 1);
x(n) = B(i)/A(n, 2);
for i=n-1: -1: 1
    x(i) = (B(i) - A(i, 1)*x(i+1))/ A(i, 2);
end

disp(x);