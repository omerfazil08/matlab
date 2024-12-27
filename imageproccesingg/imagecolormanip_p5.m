A = imread('lena1.bmp');
%imshow(A(:,:,:)) % resmi vektörlere ayırma
B=A;
B(:,:,1) = 0;
B(:,:,2) = 0;
imshow(B)
%üçüncü virgül matrixin renk kısmını temsil ediyormuş
%1.si kırmızı,2.si yeşil, 3.sü mavi
%biz ilk iki virgülün (konum vektörleri) hepsini seçtik : kullanarak
%sonra da 3. virgülün 1. ve 2. elemanlarını 0'a eşitledik 
%böylece fotoğraftaki kırmızı ve yeşil renkleri 0landı.
%imshow(B(:,:,1)) %bu kodla resmin sadece kırmızı renklerini kontrol ettik
%ve sadece siyah görüntü aldık
