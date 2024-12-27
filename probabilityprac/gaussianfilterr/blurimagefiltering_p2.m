A = imread('lena1.bmp');
H = my_gaussian (25,5);

C = conv2(double(A(:,:,1)),H/50000); % böleni arttırdıkça resim daha görünür oluyor.
imshow(C)