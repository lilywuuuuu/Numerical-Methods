clear all;

A = [4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
b = [2.22 -3.17 5.11]';
x = [0 0 0]';
n = size(x,1);
normVal = Inf; 

tol = 0.00001; 
itr = 0;
w = 1.43;

while normVal > tol
    x_old= x ;
    
    for i = 1 : n
        
        sigma = 0;
        
        for j = 1 : i-1
                sigma = sigma + A(i,j)*x(j);
        end
        
        for j = i : n
                sigma = sigma + A(i,j)*x_old(j);
        end
        
        x(i) = x_old(i) + (w/A(i,i))*(b(i) - sigma);
        % disp(x(i));
    end
    
    itr = itr + 1;
    normVal = norm(x_old-x);
end

fprintf('Solution of the system is : \n%f\n%f\n%f in %d iterations\n', x, itr);

