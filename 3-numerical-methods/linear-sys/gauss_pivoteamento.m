function [h_tanque] = gauss_pivoteamento(A,b,n)

for i=1:n
    sub(i) = i;
end

for k=1:n
    max = 0;
    for i=k:n
        V_abs = abs(A(sub(i),k));
        if(max<V_abs)
            max = V_abs;
            index = i;
        end
    end
    if (max==0)
        Saida irregular
    end
    j = sub(k);
    sub(k) = index;
    sub(index) = j;
    pivo = A(sub(k),k);
    for i=(k+1):n
        A(sub(i),k) = A(sub(i),k)/pivo;
        for j=(k+1):n
            A(sub(i),j) = A(sub(i),j) - A(sub(i),k)*A(sub(k),j);
        end
        b(sub(i)) = b(sub(i)) - A(sub(i),k)*b(sub(k));
    end
end

x(n) = b(sub(n))/A(sub(n),n);
for k=1:n-1
    x(k)=b(sub(k))
    for i=k+1:n
        x(k)=x(k)-A(sub(k),i)*x(i);
    end
    x(k) = x(k)/A(sub(k),k);
end

h_tanque = x;
    