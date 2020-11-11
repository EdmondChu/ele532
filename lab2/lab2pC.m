u = @(t) 1.0.*(t>=0);
t = (-1:0.001:5);
h2= @(t) 4*exp(-t/5).*u(t);
plot(t,h2(t));
xlabel('t');
ylabel('h2(t) = 4e^(-t/5)u(t)');
title('Plot of h2(t)', 'FontSize', 10)
