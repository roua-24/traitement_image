%lire l'image et la stocker dans une variable X1
X1=imread('black_cat.jpg');
%conversion en double pour la normalisation
X1=im2double(X1);
%ajout du bruit gaussien avec variance sigma^2=0.01
variance=0.1;
X2=imnoise(X1,'gaussian',0,variance);
%afficher limage originale et bruitée
figure;
subplot(1,2,1)
imshow(X1)
title('image originale')
subplot(1,2,2)
imshow(X2)
title(['image avec bruit gaussian (\sigma^2=',num2str(variance),')'])
