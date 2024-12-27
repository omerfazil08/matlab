% FFT fast forier transform
x = linspace (0,5*pi , 1000);
y = sin(x);

Y = fft(y);
%plot (Y)
plot (real(Y))