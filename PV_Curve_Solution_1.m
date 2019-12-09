%Ideal gas equation % a program for calculating the pressure distribution in the ideal gas equation %define the tempurature
T1 = 372; % units of temperature in kelvin
T2 = 427; % units of temperature in kelvin
% define R
R=0.08206; % units L.atm.mol^-1
% define n
n=1;
% Define the array of volume in litres
V = 3 : .01*5 : 5;
% Calculate the pressure disribution (when P is the subject in the ideal % gas equation)
P1 = T1 * R * n ./ V;
P2 = T2 * R * n ./ V;
% Plot the two graphs on the one axis
plot(V, P1, 'r-', 'LineWidth', 2)
hold
plot(V,P2, 'b-', 'LineWidth', 2)
grid on;
legend('P1', 'P2');
xlabel('V', 'FontSize', 20);
ylabel('P', 'FontSize', 20);
title('PV=nRT', 'FontSize', 20);