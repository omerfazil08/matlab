mu = [0 0];
Sigma = [.25 .3 ;.3 1];
x1 = -3:.2:3;
x2 = -2:.2:3;
[X1,X2] = meshgrid(x1,x2);
F = mvnpdf([X1(:) X2(:)],mu,Sigma);
F= reshape(F,length(x2),length(x1));
surf(x1,x2,F);
caxis([min(F(:))-.5*range(F(:)), max(F(:))]);
axis([-3 3 -3 3 0 .4])
xlabel('x1');
ylabel('y1');
zlabel('Probability Density');