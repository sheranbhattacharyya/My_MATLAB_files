t = 0:0.05:2;
Y = [];
for k = -2:2
C = k+1; Y = [Y;C*exp(t)-t-1];
end
plot(t,Y)
grid on
xlabel('t'); ylabel('y')
title('Solutions to y'' = y + t.')
shg