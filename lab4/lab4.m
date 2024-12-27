% MATLAB Code to Demonstrate Gibbs Phenomenon

% Define the parameters
t = linspace(-pi, pi, 1000); % Time variable
n_values = [1, 3, 9, 33]; % Different numbers of terms in the Fourier series

% Define the original square wave (target function)
sq_wave = sign(sin(t)); % Square wave

% Plot the original square wave
figure;
plot(t, sq_wave, 'k', 'LineWidth', 2); % Plot the square wave
hold on;

% Compute and plot Fourier series approximations for different n_values
for n = n_values
    approx = zeros(size(t)); % Initialize Fourier approximation to zero
    
    % Compute Fourier series approximation
    for k = 1:2:n % Odd harmonics only
        approx = approx + (4 / (pi * k)) * sin(k * t);
    end
    
    % Plot the approximation
    plot(t, approx, 'DisplayName', sprintf('n = %d', n));
end

% Annotate the plot
title('Gibbs Phenomenon Demonstration');
xlabel('t');
ylabel('Amplitude');
legend('show');
grid on;

% Display the result
hold off;