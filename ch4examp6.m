function ch4examp6(y0)
t = linspace(0,4*pi);
y = t.*(cos(t) + sin(t)) - sin(t) + y0*exp(-t);
plot(t,y), shg
title(['y'' + y = 2tcos(t) with y(0) = ', num2str(y0), '.'])