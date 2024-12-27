clc , clearvars, close all

%parameters
max_x =10;
x= linspace (0,max_x,10000000);
y= sin(x);
y_check = 0.8;


%actions
plot(x,y,'.') , hold on , plot([0 max_x], [y_check y_check],'-r')
y_greater = y> y_check;

%outputs
FinalPercent = sum (y_greater) / length(y)
sum (y_greater)