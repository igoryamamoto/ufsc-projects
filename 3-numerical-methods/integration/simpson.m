function s = simpson(a,b,fun)
ya = fun(a);
yb = fun(b);
m = (a+b)/2;
ym = fun(m);
h = (b-a)/2;
s = h/3 * (ya+4*ym+yb);

end