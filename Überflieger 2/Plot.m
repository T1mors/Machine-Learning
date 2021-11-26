clear all
close all

r = 4.5; % Radius in cm
h = 15; % Laenge des Zylinders in cm
V = pi * r^2 * h / 1000; % Volumen in Liter
LR = 5 * 10^(-11); % in mbar l / s

t_tage = 0:1:90;
t_stunde = 24 * t_tage;
t_sekunde = t_stunde * 3600;
p1 = 10^(-3) + LR*t_sekunde/V;
plot(t_tage,p1, '-r', 'linewidth', 3)
hold on;
p2 = 10^(-4) + LR*t_sekunde/V;
plot(t_tage,p2, '-m', 'linewidth', 3)
p3 = 10^(-5) + LR*t_sekunde/V;
plot(t_tage,p3, '-b', 'linewidth', 3)
p4 =5 * 10^(-9) + LR*t_sekunde/V;
plot(t_tage,p4, '-g', 'linewidth', 3)
ax = gca;
ax.FontSize = 12
xlim([0,90])
xlabel('Days ', 'fontsize', 15)
ylabel('p / mbar', 'fontsize', 15)
title({'Pressure course at a leakage rate','of 5*10^{-11} mbar*l/s'}, 'fontsize', 14)
lgd = legend({'10^{-3} mbar','10^{-4} mbar','10^{-5} mbar','10^{-9} mbar'}, 'Location', 'east', 'fontsize', 15)
title(lgd,'Starting Pressure')