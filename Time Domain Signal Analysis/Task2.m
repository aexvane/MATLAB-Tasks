t = 0:0.01:10;
x1 = 0*(t <1);
x2 = 1* (t >=1 & t <=2);
x3 = 0* (t >2 & t <=10);
x = x1+x2+x3;
h = x;
y = conv (x , h)*0.01;
ty = 0:0.01:20;

subplot (3,1,1);
plot (t , x)
subplot (3,1,2);
plot (t , h)
subplot (3,1,3);
plot (ty , y);

