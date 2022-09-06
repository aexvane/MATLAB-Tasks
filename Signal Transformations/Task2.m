t = 0:0.001:5;
x = cos(2.*pi.*t).*t;

subplot (5 , 1 , 1);
plot (t , x), grid on ;
legend ('x (t)')

subplot (5 ,1 , 2);
plot (-t , x) , grid on ;
legend ('x (-t)')

subplot (5 , 1, 3);
plot (t/5 , x) , grid on ;
legend ('x (t/5)')

subplot (5 , 1 , 4);
plot (1+(3.*t) , x) , grid on ;
legend ('x (1+3t)')

subplot (5 , 1 , 5);
plot (-1 -(3.*t) , x) , grid on ;
legend ('x (-1-t)')
