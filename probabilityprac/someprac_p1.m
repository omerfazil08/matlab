R = readmatrix('random_integers.csv');
size(R);
plot(R)
x = sum(R == -5) / length(R);
histogram(R)