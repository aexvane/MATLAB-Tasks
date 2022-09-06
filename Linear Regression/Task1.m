load accidents 
x = hwydata(:,14);
y = hwydata(:,4);
format long 
b1 = x\y
yCalc1 = b1*x;
scatter(x,y)
hold on
plot(x,yCalc1) 
xlabel('Population of state') 
ylabel('Fatal traffic accidents per state') 
title('Linear Regression Relation Between Accidents & Population') 
grid on
X = [ones(length(x),1) x];
b = X\y 
yCalc2 = X*b;
plot(x,yCalc2,'--') 
legend('Data','Slope','Slope & Intercept','Location','best');