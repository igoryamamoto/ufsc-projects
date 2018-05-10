function x = jacobi(A,b,x)

n = size(A,1);  % pega a dimensão da matrix A
k = 1;
lim = 100;
eps = 10^-6;
while (k<lim)
    for j=1:n
        z(j,:) = 1/A(j,j)*(b(j) - A(j,:)*x(:,k) + A(j,j)*x(j,k));
    end
    k = k + 1;
    if(abs(z-x(:,k-1)) < eps)
        x(:,k) = z;
        break;
    else
        x(:,k) = z;
    end    
end
