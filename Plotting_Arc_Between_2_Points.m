%Ploting an arc between 2 points

%first input
a=[0 1]; %P1
b=[1 0]; %P2
r=3;     %radius
%next solution
syms x y
[x,y]=solve((x-a(1))^2+(y-a(2))^2==r^2,(x-b(1))^2+(y-b(2))^2==r^2,x,y);
%plot arc
syms X Y
ezplot((X-x(1))^2+(Y-y(1))^2==r^2,[min(a(1),b(1)),max(a(1),b(1)), ...
    min(a(2),b(2)),max(a(2),b(2))])
axis equal
figure
ezplot((X-x(2))^2+(Y-y(2))^2==r^2,[min(a(1),b(1)),max(a(1),b(1)), ...
    min(a(2),b(2)),max(a(2),b(2))])
axis equal