%% Frequency Response of a 4-point Averaging FIR Filter

% Define filter coefficients for 4-point averager
bb = 1/4 * ones(1, 4); % Coefficients: [0.25, 0.25, 0.25, 0.25]

% Define frequency vector (normalized to radians)
ww = linspace(-pi, pi, 400); % 400 samples over [-pi, pi]

% Compute frequency response using freqz
H = freqz(bb, 1, ww); % Frequency response

% Plot magnitude and phase using freqz output
figure;
subplot(2, 1, 1);
plot(ww, abs(H), 'b', 'LineWidth', 1.5);
grid on;
title('Magnitude Response |H(e^{j\omega})|');
xlabel('Normalized Frequency (radians/sample)');
ylabel('Magnitude');

subplot(2, 1, 2);
plot(ww, angle(H), 'r', 'LineWidth', 1.5);
grid on;
title('Phase Response \angleH(e^{j\omega})');
xlabel('Normalized Frequency (radians/sample)');
ylabel('Phase (radians)');

% Direct computation of magnitude and phase from formula
C_omega = (2 * cos(0.5 * ww) + 2 * cos(1.5 * ww)) / 4; % Real part
phi_omega = -1.5 * ww; % Phase shift term

% Plot real part and phase from the analytical formula
figure;
subplot(2, 1, 1);
plot(ww, C_omega, 'b', 'LineWidth', 1.5);
grid on;
title('Computed C(\omega) from Analytical Formula');
xlabel('Normalized Frequency (radians/sample)');
ylabel('C(\omega)');

subplot(2, 1, 2);
plot(ww, phi_omega, 'r', 'LineWidth', 1.5);
grid on;
title('Phase \phi(\omega) from Analytical Formula');
xlabel('Normalized Frequency (radians/sample)');
ylabel('Phase (radians)');
