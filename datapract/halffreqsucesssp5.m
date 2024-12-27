[d,fs] = audioread('helloworld.wav');
%sound (d,fs)
size (d);
size (fs);
d2 = flipud (d);
%fs2 = flipud (fs);
%sound (d2,fs) % or sound (d2,fs2)
%plot (d2)
audiowrite ("helloworld_reverse.mp4",d2,fs);
d3 = audioread ('helloworld_reverse.mp4');
[d3,fs] = audioread ('helloworld_reverse.mp4');
%sound (d3,fs);
d4 = downsample (d,2);
sound (d4 , fs)