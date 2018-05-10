% Metodo da bisecção
%
%   O metodo da bisecção, inspirado no Teorema de Bolzano, parte de um
% intervalo [a, b] que contenha uma raiz para f(x) = 0 onde f(a)*f(b) < 0,
% calcula um ponto medio com Xm = a+b/2 e verifica f(Xm), recalculando um
% novo intervalo;
%
%
function [res] = biseccao(a,b,L,e1,e2)
x0 = a;
x1 = b;
i=0;
vector= [];
F0 = simula(x0)-1000; %função a ser resolvida
F1 = simula(x1)-1000;
if (F0*F1)>0
        error('não satisfaz as condicoes inicias');
end;
while (abs(F0) > e2) ~= (abs(F1)>e2) ~= (i<= L)
    if abs(x0-x1) < e1*(abs(x1))
        res = [x0 x1];
        return
    end;
    x2 = (x0+x1)/2; %calcula o proximo iterando
    F2 = simula(x2)-1000;
    vector(i+1) = x2;
    if F2*F0 < 0 %verifica o proximo intervalo
        x1 = x2;
        F1 = F2;
    else
        x0 = x2;
        F0 = F2;
    end;
    i = i+1;
end;
if i> L %caso atinja o numero de iterações, retorna o ultimo resultado
    res = x2;
    disp(vector)
    return 
end;
if abs(F0) > e2
    res = x0;
else
    res = x1;
end;

        