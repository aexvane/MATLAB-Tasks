t = 0 :0.01:4;
x= t.*(t<=2)+(4-t).*(t>2);

subplot (5 , 1, 1);
plot (t , x) , grid on ;
legend ('x(t)');

subplot (5 , 1, 2);
plot (-t , x) , grid on;
legend ('x(-t)');

subplot (5 , 1, 3);
plot (t/2 , x) , grid on;
legend ('x(t/2)') ;

subplot (5 , 1 , 4);
plot (2+(4.*t) , x) , grid on ;
legend ('x (2+4t)');

subplot (5 , 1 , 5);
plot (-2-(4.*t) , x) , grid on ;
legend ('x (2+4t)');