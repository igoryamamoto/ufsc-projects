function [L,U,P] = LUP(A)
%--------------------------------------------------------------------------
% Entradas:     A é a matriz a ser decomposta
%               
% Saídas:       L é a matriz triangular inferior, U é a matriz triangular
%               superior e P é a matriz de pivoteamento
%               
% Descrição:    Esta funcao realiza a decomposição da matriz A em um
%               produto de matrizes triangulares inferior (L) e 
%               superior (U) tal que P.A = L.U
%               
% Autor:        Ígor Assis Rocha Yamamoto
%               igor.a.r.y@gmail.com
%                      
% Data:         Junho 2016
%--------------------------------------------------------------------------
tic
% INICIALIZAÇÃO
n = size(A,1);
for i=1:n
    pi(i) = i;
end

for k=1:n
% PIVOTEAMENTO 
% percorre as linhas da k-ésima coluna a procura do elemento de maior norma)
    p = 0;
    for i=k:n
        if abs(A(i,k))>p 
            p = abs(A(i,k));
            k2 = i;
        end
        if p==0
            disp('Matriz Singular')
            return
        end
    end
% permuta as linhas da matriz se necessário
    if k ~= k2
        temp = pi(k);
        pi(k)= pi(k2);
        pi(k2)= temp;  
    
        tmp = A(k,:);
        A(k,:) = A(k2,:);
        A(k2,:) = tmp;
    end
% CÁLCULO DOS NOVOS FATORES DA MATRIZ A
    for i=k+1:n
        A(i,k)=A(i,k)/(A(k,k));
        for j=k+1:n
            A(i,j)=A(i,j)-(A(i,k)*A(k,j));
        end
    end
end

% OBTENÇÃO DAS MATRIZES L, U e P
L = eye(n);
U = A;
for i = 1:n
    for j = 1:i-1
        L(i,j) = A(i,j);
        U(i,j) = 0;
    end
end        
P = eye(n);
P = P(pi,:);
toc
    