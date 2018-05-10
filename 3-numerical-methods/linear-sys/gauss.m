%Leonardo Salsano de Assis - M�todo de Gauss (Elimina��o Gaussiana) p/ Sistemas de Eq. Lineares

function x = gauss(A,b)

n = size(A,1);  % pega a dimens�o da matrix A
A = [A,b];      % gera a matrix a aumentada


% In�cio do processo de elimina��o
for i = 1:n-1
    p = i;
    
    % Compara��o para selecionar o piv�
    for j = i+1:n
        if abs(A(j,i)) > abs(A(i,i))
            U = A(i,:);
            A(i,:) = A(j,:);
            A(j,:) = U;        
        end
    end
    
    % Verifica se os piv�s s�o nulos
    while A(p,i)== 0 & p <= n
        p = p+1;
    end
    if p == n+1
        disp('No unique solution');
        break
    else
        if p ~= i
            T = A(i,:);
            A(i,:) = A(p,:);
            A(p,:) = T;
        end
    end
    
    for j = i+1:n
        m = A(j,i)/A(i,i);
        for k = i+1:n+1 
            A(j,k) = A(j,k) - m*A(i,k);
        end
    end
end

% Verifica a nulidade da �ltima linha
if A(n,n) == 0
    disp('No unique solution');
    return
end

% Substitui��o Backward
x(n) = A(n,n+1)/A(n,n);
for i = n - 1:-1:1
    sumax = 0;
    for j = i+1:n
        sumax = sumax + A(i,j)*x(j);
    end
    x(i) = (A(i,n+1) - sumax)/A(i,i);
end

