function x = gauss_seidel(A,b,x)

n = size(A,1);  % pega a dimensão da matrix A
k = 1;
lim = 100;
eps = 10^-6;
x_aux = x;
while (k<lim)
    for j=1:n
        z(j,:) = 1/A(j,j)*(b(j) - A(j,:)*x_aux + A(j,j)*x(j,k));
        x_aux(j,:) = z(j,:);
    end
    k = k + 1;
    if(abs(z-x(:,k-1)) < eps)
        x(:,k) = z;
        break;
    else
        x(:,k) = z;
    end    
end
