% Part (c) MATLAB code

% Define time axis
t = -10:10;  % Time from 0 to 10 with a step of 0.01

% Define x(t)
x_t = sin(pi*t);  % One period of sin(pi*t)

% Define h(t)
h_t = 2 * ((t >= 1) & (t <= 3));  % h(t) = 2 for 1 <= t <= 3

% Perform convolution
y_t = conv(x_t, h_t, 'same') * (t(2) - t(1));  % Convolution result with scaling

% Plot the result
subplot(3,1,1);
stem(t, x_t, 'filled');
xlabel('n');
ylabel('x[n]');
title(['Plot of x[n]']);
grid on;
subplot(3,1,2);
stem(t, h_t, 'filled');
xlabel('n');
ylabel('h[n]');
title(['Plot of h[n]']);
grid on;

subplot(3,1,3);
stem(t, y_t,'filled');
title('Convolution of x(t) and h(t) - Part (c)');
xlabel('Time (t)');
ylabel('y(t)');
grid on;
