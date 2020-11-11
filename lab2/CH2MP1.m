% CH2MP1.m : Chapter 2, MATLAB Program 1
% Script M-file determines characteristic roots of op-amp circuit.
% Set component values:
R = [1e4, 1e4, 1e4]; 
C = [1e-6, 1e-6];
% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% Determine characteristic roots:
lambda = roots(A);
p = poly(A);

% solve for LTE of h(t) function accordingly with roots given
t = (0:0.0005:0.1);
u = @(t) 1.0.*(t>=0);
h = @(t) -44.721359 .* exp(-261.8034 .*t)+ 44.721359 .* exp(-38.1966.*t).*u(t);

plot (t, h(t));
xlabel('t');
ylabel('h(t)');
title('Plot of h(t)');
axis ([0 0.1 0 30]);
grid;