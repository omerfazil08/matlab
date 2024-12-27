% Define parameters
a = 0.8; 
B = 0.5; % Exponential base
n = -10:10;      % Range of n

% Define the unit step function u[n]
u_n = n >= 0;    % u[n] is 1 for n >= 0, 0 otherwise

% Define the function x[n] = a^n * u[n]
x_n = (a.^n) .* u_n;  % Element-wise exponentiation and multiplication
h_n = (B.^n) .* u_n;
y_n = x_n .* h_n;
% Plot the function using stem for discrete signals
subplot (3,1,1);
stem(n, x_n, 'filled');
xlabel('n');
ylabel('x[n] = a^n \cdot u[n]');
title(['Plot of x[n] = ' num2str(a) '^n \cdot u[n]']);
grid on;
subplot (3,1,2);
stem(n, h_n, 'filled');
xlabel('n');
ylabel('h[n] = b^n \cdot u[n]');
title(['Plot of h[n] = ' num2str(B) '^n \cdot u[n]']);
grid on;
subplot (3,1,3);
stem(n, y_n, 'filled');
xlabel('n');
ylabel('y[n] = x[n] * h[n]');
title(['Plot of y[n] = x[n] * h[n]']);
grid on;