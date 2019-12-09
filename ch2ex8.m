t = linspace(-2*pi,2*pi,1000);
x = 2*sin(t/2).*sin(23*t/2);
env = 2*sin(t/2);
plot(t,x)
hold on
h = plot(t,[env;-env]);
set(h,'linewidth',2,'color','r');
hold off
axis([-2*pi,2*pi,-2.1,2.1])
xlabel('t')
ylabel('x(t)')
shg