%lire l'image et la stocker dans la variable X1
X1=imread('black_cat.jpg');
%convertir l'image en double pour la normalisation
X1=im2double(X1);
%renormaliser l'image en utilisant la fonction mat2gray
X1_normalized=mat2gray(X1);
%affichage des deux images; originale et normalisée
figure;
subplot(1,2,1)
imshow(X1)
title('image originale')
subplot(1,2,2)
imshow(X1_normalized)
title('image normalisée')