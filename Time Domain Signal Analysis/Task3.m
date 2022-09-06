t = 0:0.01:10;
a = heaviside (t);
b = heaviside (t-4);
h = cos(2.*pi.*t).*(a - b);


x1 = 2.*t.*(t >=0 & t <=1);
x2 = -2*(t-2).*(t >=1 & t <=2);


x = x1+x2;
ty = 0.002:0.01:10;
y = conv (x , h);

subplot (3,1,1);
plot (t , x)
legend ('x (t)');
subplot (3,1,2);
plot (t , h);
legend ('h (t)');
subplot (3,1,3);
plot (ty , y);
legend ('y (t)');