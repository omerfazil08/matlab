R  = readmatrix('random_integers.csv');
sum(R);
plot (R)
mean(R); % mean(R) = sum(R) / lenght(R)
meanR = mean(R);
varR= (R - meanR)'*(R-meanR)/[length(R)-1]
var(R)