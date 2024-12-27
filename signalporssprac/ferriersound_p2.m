d = audioread('helloworld_reverse.wav');
D = fft(d(:,1));
plot(real(D));
subplot