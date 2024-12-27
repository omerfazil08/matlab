X = 1 :10
 Y = zeros (1,10);
for i = 1:10
if mod(X(i),2)==0
Y(i) = 1;
else
Y(i)=0;
end
end
Y
disp ("The number of even numbers in x is :")
sum(Y)