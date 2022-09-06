T = 6;
t0 = 0;
w = 2*pi/T;

syms t
x = t.*exp(-t);

a0 = (1/T)*int(x,t,t0,t0+T);
for n = 1:5
    b(n) = (2/T)*int(x*cos(n*w*t),t,t0,t0+T);
end
for n = 1:5
    c(n) = (2/T)*int(x*sin(n*w*t),t,t0,t0+T);
end
k = 1:5;
xx = a0+sum(b.*cos(k*w*t))+sum(c.*sin(k*w*t))
ezplot(xx, [t0 t0+T]);
title ('Approximation with 6 terms')