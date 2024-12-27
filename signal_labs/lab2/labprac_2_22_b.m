% Part (b) MATLAB code

% Define time axis
t = -10:10;  % Time from 0 to 10 with a step of 0.01

% Define x(t)
x_t = (t >= 0) - 2*(t >= 2) + (t >= 5);

% Define h(t)
h_t = exp(2*t) .* (t <= 1);

% Perform convolution
y_n = conv(x_t, h_t, 'same') * (t(2) - t(1));  % Convolution result with scaling

% Plot the result
subplot(3,1,1);
stem(n, x_t, 'filled');
xlabel('n');
ylabel('x[n]');
title(['Plot of x[n]']);
grid on;
subplot(3,1,2);
stem(n, h_t, 'filled');
xlabel('n');
ylabel('h[n]');
title(['Plot of h[n]']);
grid on;

subplot(3,1,3);

stem(n, y_n, 'filled');
title('Convolution of x[n] and h[n] - Part (b)');
xlabel('n');
ylabel('y[n]');
grid on;
