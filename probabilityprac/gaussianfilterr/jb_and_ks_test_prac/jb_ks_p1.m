clc
R = randn(1000,1);
U = rand(1000,1);
[h,p] = jbtest(R)
[t,k] = kstest(U)

