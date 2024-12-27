E = randn (1000,1);
SSE=0;
for i = 1:1000
    SSE = SSE + (E(i)*E(i));
end
MSE = (SSE/1000)