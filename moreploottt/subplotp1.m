X = linspace ( 0 , 2*pi , 100);
Y = sin(X);
Z= Y + randn (1,100);

plot (X,Z)
plot (X,Z,X,Y)
subplot (2,1,1);
plot (X,Z)
subplot (2,1,2);
plot (X,Y)