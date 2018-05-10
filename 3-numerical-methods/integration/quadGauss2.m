function s = quadGauss2(a,b,fun)
x =@(t) a + (b-a)/2 *(t+1);
F1 = fun(x(-1/sqrt(3)));
F2 = fun(x(1/sqrt(3)));
s = (b-a)/2 *(F1 + F2);
end