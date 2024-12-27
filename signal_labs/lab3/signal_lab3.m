% MATLAB Code for plotting Fourier series approximation of a square wave
clc; clear; close all;

% Define the time vector
t = linspace(-pi, pi, 1000);

% Square wave Fourier series parameters
n_values = [1, 3, 9, 33]; % Maximum n values for each plot
L = pi; % Fundamental period

% Loop over each max n value to plot Fourier series approximations
for i = 1:length(n_values)
    max_n = n_values(i);
    sq_approx = zeros(size(t)); % Initialize Fourier series sum

    % Sum the Fourier series up to the given max_n
    for n = 1:2:max_n % Use odd values only
        sq_approx = sq_approx + (4 / (pi * n)) * sin(n * t);
    end
    
    % Plot the Fourier series approximation
    subplot(2, 2, i);
    plot(t, sq_approx, 'b', 'LineWidth', 1.5); hold on;
    
    % Mark expected overshoot level of Gibbs phenomenon
    line([-pi, pi], [1.18, 1.18], 'Color', 'r', 'LineStyle', '--'); % Upper overshoot line
    line([-pi, pi], [-1.18, -1.18], 'Color', 'r', 'LineStyle', '--'); % Lower overshoot line
    
    % Set plot limits and labels
    ylim([-1.5 1.5]);
    title(['Fourier Series Approximation with max n = ', num2str(max_n)]);
    xlabel('t');
    ylabel('sq(t)');
    grid on;
end

% Overall plot adjustments
sgtitle('Fourier Series Approximations of Square Wave and Gibbs Phenomenon');
