
R = readmatrix('random_integers.csv');
a = sum(mod(R,2) == 0) / length(R)
b = sum(mod(R,2) == 1) / length(R)
sumx = a+b
sum(R == 5 | R == -5) / length (R)
% or kullanımı