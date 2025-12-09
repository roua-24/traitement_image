%lire et normaliser l'image
X1=imread('black_cat.jpg');
X1=im2double(X1);
%appliquer un bruit gaussien avec sigma^2=0.01
variance=0.01;
X2=imnoise(X1,'gaussian',0,variance);
%appliquer un bruit poivre et sel avec p=0.05
p=0.05;
X3=imnoise(X1,'salt & pepper',p);
%affichage des images; originale et bruitées
figure;
subplot(1,3,1)
imshow(X1)
title('image originale (X1)')
subplot(1,3,2)
imshow(X2)
title(['bruit gaussien (X2)(\sigma= ',num2str(variance),')'])
subplot(1,3,3)
imshow(X3)
title(['bruit poivre et sel (X3) (p=',num2str(p),')'])