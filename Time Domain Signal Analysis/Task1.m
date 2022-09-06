t = -2 :0.01:5;
h = exp (-t).*heaviside(t);
x1 = 0.6* (t >=-1 & t < 0.5);
x2 = -0.3* (t >=0.5 & t <=3);
x = x1+x2;
y = conv (x , h);
ty = -4:0.01:10;
subplot (3,1,1);
plot (t , x)
legend ('x (t)');
subplot (3,1,2);
plot (t , h)
legend ('h (t)');
subplot (3,1,3);
plot (ty , y);
legend ('y (t)');
