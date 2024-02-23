clear all;

f = @(x, y, z)[x - 3*y - z^2 + 3; 2*x^3 + y - 5*z^2 + 2; 4*x^2 + y + z - 7];
j = @(x, y, z)[1, -3, -2*z; 6*x^2, 1, -10*z; 8*x, 1, 1];
X = [1, 1, 1].';
% X = [1.3, 0.9, -1.2].';
% X = [30, 0, 0].';
% X = [50, 0, 0].';
% X = [-1 + i, 0, 0].';

answer = f(X(1, 1), X(2, 1), X(3, 1));
check = abs(answer(1, 1)) + abs(answer(2, 1)) + abs(answer(3, 1));
tol = 0.00001;

while check > tol
    s = linsolve(j(X(1, 1), X(2, 1), X(3, 1)), -f(X(1, 1), X(2, 1), X(3, 1)));
    X = X + s;
    answer = f(X(1, 1), X(2, 1), X(3, 1));
    check = abs(answer(1, 1)) + abs(answer(2, 1)) + abs(answer(3, 1));
    % format long;
    % disp(X);
end
format long g;
disp(X);
