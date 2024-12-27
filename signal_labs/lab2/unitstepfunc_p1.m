% Define the range for n
n = -10:10;

% Define the unit step function u[n]
u_n = n >= 0;  % This creates an array where u[n] = 1 for n >= 0, and u[n] = 0 for n < 0

% Plot the function using stem for discrete-time signals
stem(n, u_n, 'filled');
xlabel('n');
ylabel('u[n]');
title('Unit Step Function u[n]');
grid on;
