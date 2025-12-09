%lire et normaliser l'image
x1=imread('black_cat.jpg');
X1=im2double(x1);
%appliquer le bruit gaussien avec sigma^2=0.01
variance=0.01;
X2=imnoise(X1,'gaussian',0,variance);
%appliquer bruit poivre et sel avec p=0.05
p=0.05;
X3=imnoise(X1,'salt & pepper',p);
%appliquer un filtre moyenneur de taille 3x3 sur X2
h=fspecial('average',[3 3]); %créer le filtre moyenneur
Y2=imfilter(X2,h); %appliquer le filtre sur X2
%appliquer un filtre median de taille 3x3 sur X3
Y3 = medfilt2(X3, [3 3]);
%afficher les 3 images sur la meme figure
figure;
subplot(1,3,1)
imshow(X1)
title('image originale(X1)')
subplot(1,3,2)
imshow(X2)
title(['bruit gaussian (X2, \sigma^2= ',num2str(variance),')'])
subplot(1,3,3)
imshow(Y2)
title('image aprés filre moyenneur (Y2)')
figure;
subplot(1,3,1)
imshow(X1)
title('image originale(X1)')
subplot(1,3,2)
imshow(X3)
title(['bruit poivre et sel(X3, p=',num2str(p),')'])
subplot(1,3,3)
imshow(Y3)
title('image aprés filtre median(Y3)')