%lina.bmp is colorless and lina1.bmp is colorfull
A = imread('lena1.bmp');
size(A);

U=flipud(A);
imshow(U)