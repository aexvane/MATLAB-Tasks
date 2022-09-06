t = -2: 0.01: 5;
z = heaviside (t);
y = heaviside (t-2);
p2 = z-y;
x = cos(10.*pi.*t).*(t.^3).*p2;
plot (t , x) , grid on;
