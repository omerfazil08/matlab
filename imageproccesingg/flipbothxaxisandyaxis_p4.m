A = imread('lena1.bmp');
size(A);

%UL=flipud(fliplr(A));  %you can use it this way but rot90 is better
%imshow(UL);
UT=rot90(A,2);
imshow(UT);