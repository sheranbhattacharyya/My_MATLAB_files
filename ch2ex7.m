t = 0:0.05:2;
C = -2+1; plot(t,C*exp(t) - t - 1,'-')
hold on
C = -1+1; plot(t,C*exp(t) - t - 1,'-.')
C = 0+1; plot(t,C*exp(t) - t - 1,'--')
C = 1+1; plot(t,C*exp(t) - t - 1,'.')
C = 2+1; plot(t,C*exp(t) - t - 1,':')
grid on
xlabel('t')
ylabel('y')
title('Solutions to y'' = y + t.')
legend('y(0) = -2','y(0) = -1','y(0) = 0','y(0) = 1','y(0) = 2')
shg, hold off
