A = imread('lena1.bmp');
h = fspecial ('gaussian' , 25 , 5);
c = conv2 (double(A(:,:,1)) , h/500);
imshow(c)
%imshow(h)
max(max(h));
imshow(h/max(max(h)))
sum(sum(h));