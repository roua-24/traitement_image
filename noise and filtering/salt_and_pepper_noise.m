%lire et normaliser l'image
X1=imread('black_cat.jpg');
X1=im2double(X1);
%appliquer bruit poivre et sel avec pourcentage p=0.05
p=0.05;
X3=imnoise(X1,'salt & pepper',p);
%afficher l'image originale et bruitée
figure;
subplot(1,2,1)
imshow(X1)
title('image originale')
subplot(1,2,2)
imshow(X2)
title(['image avec poivre et sel (p=', num2str(p),')'])


