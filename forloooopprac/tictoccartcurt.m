tic
SSE= 0;
for i = 1:100
    SSE = SSE + E(i)*E(i);
end
MSE = SSE/1000;
toc