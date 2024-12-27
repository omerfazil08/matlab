d = audioread('helloworld_reverse.wav');
D = fft(d(:,1));
%plot(real(D));
f = audioread('scary_helloworld.mp4');
[f,fs] = audioread('scary_helloworld.mp4');
sound(f,fs)
F=fft(f);
%plot(real(F));

subplot (2,1,1);
plot(real(D));
subplot (2,1,2);
plot(real(F));