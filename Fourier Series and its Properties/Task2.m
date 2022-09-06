T = 6;
t0 = -3;
w = 2*pi/T;

syms t
x = exp(-t.^2);
k = -3:3;
a0 = (1/T)*int(x,t,t,t0+T);
b = (2/T)*int(x*cos(k*w*t),t,t0,t0+T);
c = (2/T)*int(x*sin(k*w*t),t,t0,t0+T);

figure
subplot (3,1,1)
stem(0,a0),legend('a0'),title('Trignometric Coefficients of x(t)');
subplot (3,1,2)
stem(0,a0),legend('b_k');
subplot (3,1,3)
stem(0,a0),legend('c_k');