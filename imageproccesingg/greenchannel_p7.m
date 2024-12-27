A = imread('lena1.bmp');
%imshow(A(:,:,:)) % resmi vektörlere ayırma
G=A;
G(:,:,1) = 0;
G(:,:,3) = 0;
imshow(G)