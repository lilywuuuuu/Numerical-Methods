clear all;

A = [1e10 0; 0 1e-10];
B = [1e10 0; 0 1e10];
C = [1e-10 0; 0 1e-10];
D = [1 2; 2 4];

invA = inv(A);
invB = inv(B);
invC = inv(C);
invD = inv(D);

condA = norm(A)*norm(invA);
condB = norm(B)*norm(invB);
condC = norm(C)*norm(invC);
condD = norm(D)*norm(invD);

disp(condA);
disp(condB);
disp(condC);
disp(condD);