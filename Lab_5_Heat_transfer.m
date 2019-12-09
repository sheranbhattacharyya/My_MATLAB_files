%% Given
U = [1.5 1.3 1.5]';    %Voltage in Volts
del_H = [400 800 1600]';   %Pressure Drop in Pascals                 
del_p = [671 1214 2225]';  %Change in pressure at outlet in Pa
tf1 = [22 22 22]';     %temperature at exhaust fan in degree Celcius
tf2 = [59.1 41.1 40.4]';   %temperature at inlet in deg C
tw = [48.2 51.1 54.6 59.4 65.9 73 80.2 87.4 92.1 93.6;     %temperature at various points on the surface wall of the gas tube in deg C
      37 38.6 40.6 43.2 46.7 50.6 54.4 58.3 60.9 61.7;
      37.5 39.1 41 43.6 47 50.7 54.5 58.2 60.7 61.5];
x = [25 45 85 155 250 370 490 610 695 715];  %Distances of the tw points from the inlet in metres
L = [25 30 55 82.5 107.5 120 120 102.5];    %

R_work_area = 0.041;    %work area in m^2
B = 101058.3529;    %Barometric pressure converted from mmHg to pascals
R = 287;        %Gas constant in J/Kg K
mew = 0.63;     %Calibration factor
d = 8.5e-3;     %Diameter of the tube in m
K = 0.18;       %Heat conductivity coefficient
l = 0.72;       %length of the tube in m
lambda_f = [2.82 2.82 2.82 2.89 2.96 2.96 3.04 3.12 3.12 3.12];     
V_f = [17.95 17.95 17.95 18.97 20.02 20.02 21.09 22.10 22.10 22.10];    %Viscosity of the fluid

%% Calculations
Q = U.^2 / R_work_area;     
ro_dd_f = (B - del_p) ./ (R .* (tf2 + 273));
G = mew .* pi .* (d^2 ./ 4) .* sqrt(2 .* ro_dd_f .* del_H);
tf = 1/2 .* (tf2 + tf1);
ro_f = B / (R .* ( tf + 273 ));
del_t = (tw - tf1) - (((tf2 - tf1) ./ 720) .* x);
% for i = 1:9
%     del_t = (tw - tf1) - (((tf2 - tf1) / 720) .* x(i));
% end
tw_cp = mean(tw);

Qn = K * (tw_cp - tf1);
alpha = ((Q - Qn) ./ (del_t .* pi .* d .* l));
alpha_mean = mean(alpha);
for i = 1:8
    alpha_not = (alpha(i) * L(i)) / L(i);
end
 Nu_f = (alpha_not .* d) ./ mean(lambda_f);
lambda_mean = mean(lambda_f);
Re_f = 4 * G / (pi * d * ro_f * mean(V_f));
