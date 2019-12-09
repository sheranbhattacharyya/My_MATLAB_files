function ch4examp3
close all
t = linspace(0,15,200);
y = height(t);
plot(t,y)
grid on
xlabel('time in seconds')
ylabel('height in meters')
title('Solution of y'''' = -9.8 - y'', y(0) = 0, y''(0) = 120')

function y = height(t)
y = -(49/5)*t + (649/5)*(1 - exp(-t));