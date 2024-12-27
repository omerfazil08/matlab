X = linspace ( 0 , 2*pi , 100);
Y = sin(X);
Z  = cos(X);
subplot (2,1,1);
plot (X,Y)
title ('A plot of sin(x)')
xlabel('my x1 label')
ylabel('my y1 label')
subplot (2,1,2);
plot (X,Z)
title ('A plot of cos(x)')
xlabel('my x2 label')
ylabel('my y2 label')