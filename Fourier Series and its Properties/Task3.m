T = 2;
t0 = 0;
w = 2*pi/T;
syms t
x = heaviside(t)+((heaviside(t-1)).*(1-t));
suplot (2,1,1);
ezplot(x,[t0 t0+T]), grid on
a0 = (1/T)*int(x,t,t0,t0+T);
for n = 1:2
b(n) = (2/T)*int(x*cos(n*w*t),t,t0,t0+T);
c(n) = (2/T)*int(x*sin(n*w*t),t,t0,t0+T);
end