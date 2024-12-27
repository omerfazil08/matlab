A = imread('lena1.bmp');
%imshow(A(:,:,:)) % resmi vektörlere ayırma
R=A;
R(:,:,2) = 0;
R(:,:,3) = 0;
imshow(R) 