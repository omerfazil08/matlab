clc
R1 = randn (10,1);
R2 = (randn(10,1) + 0.1)*2;
figure (1);
histogram(R1,50);
figure (2);
histogram(R2,50);
[h,p] = ttest2(R1,R2)