%Leonardo Salsano de Assis - M�todo de Newton p/ Sistemas de Eq. � Lineares
function xk = newton

x0 = [1; 1];
xk = x0;

F = [3*xk(1)^2 - xk(2)^2; 3*xk(1)*xk(2)^2 - xk(1)^3 - 1];
J = [6*xk(1) -2*xk(2); 3*xk(2)^2 - 3*xk(1)^2  6*xk(1)*xk(2)];

xn = [0 ; 0];
epsilon = 1e-8;
maxvalue = 10000.0;
maxiter = 100;
iter = 1; 
I=[1];   
k = 1;
    
%Matriz que guarda todos os pontos xo(1) de cada itera��o
px1 = [xk(1)];
    
%Matriz que guarda todos os pontos xo(2) de cada itera��o
px2 = [xk(2)];
    
%Matriz que calcula o erro absoluto para cada xo em rela��o ao ponto
%convergido (para cada itera��o)
erro = [];    

while (norm(F)>epsilon)
    
    if abs(det(J))<epsilon
        error('O jacobiano � singular, tente outro ponto x0');
        abort;
    end;
    
    xn(1) = (- F(2) + J(2,1)*xk(1)+J(2,2)*xk(2) - (J(2,2)/J(1,2))*( - F(1) + J(1,1)*xk(1) + J(1,2)*xk(2) )) / (J(2,1) - J(1,1)*(J(2,2)/J(1,2)));     
    xn(2) = ( -F(1) + J(1,1)*xk(1) + J(1,2)*xk(2) - J(1,1)*xn(1) ) / ( J(1,2) );
    
    xk = xn;
    
    F = [3*xk(1)^2 - xk(2)^2; 3*xk(1)*xk(2)^2 - xk(1)^3 - 1];
    J = [6*xk(1) -2*xk(2); 3*xk(2)^2 - 3*xk(1)^2  6*xk(1)*xk(2)];
       
    k = k + 1;
    iter = iter + 1;
          
    px1(k) = (xk(1));
    px2(k) = (xk(2));
    I(k) = k;        
         
    if iter >= maxiter
            break;
        end
    
    if abs(F)>maxvalue
        iter = N;
        disp(['N�mero de itera��es = ', num2str(iter)]);
        error('Solu��o diverge');
        abort;
    end;   
end;

    for i = 1:1:k
        erro(i) = norm([px1(i);px2(i)] - xk);
    end

    figure;
    
    %Fun��o itera��o x erro
    %plot(I, ERRO);
    stem(I, erro, 'fill');
    
    
    %Descri��o do Gr�fico
    xlabel('Itera��o');
    ylabel('Erro Absoluto');
    grid on;
    
    %axis([xmin xmax ymin ymax])
    axis([ 1 , iter + 1 , 0 , (norm(erro))]);
