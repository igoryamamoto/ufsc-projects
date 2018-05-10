function s = trapezio(a,b,fun)
ya = fun(a);
yb = fun(b);
s = (b-a)/2 *(ya+yb);
end