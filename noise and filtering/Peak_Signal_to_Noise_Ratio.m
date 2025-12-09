% Étape 1: Lire et normaliser l'image 
X1 = imread('black_cat.jpg'); % Lire l'image 
X1 = im2double(X1); % Normaliser l'image en double 
% Étape 2: Appliquer un bruit blanc gaussien à X1 
variance = 0.01; % Variance pour le bruit gaussien 
X2 = imnoise(X1, 'gaussian', 0, variance); % Ajouter le bruit  
% Étape 3: Appliquer un filtre moyenneur de taille 3x3 sur X2 
h = fspecial('average', [3 3]); % Créer un filtre moyenneur 
Y2 = imfilter(X2, h); % Appliquer le filtre sur X2 
% Étape 4: Appliquer un bruit de type sel et poivre à X1 
p = 0.05; % Pourcentage de pixels modifiés 
X3 = imnoise(X1, 'salt & pepper', p); % Ajouter le bruit 
% Étape 5: Appliquer un filtre médian de taille 3x3 sur X3 
Y3 = medfilt2(X3, [3 3]); % Appliquer le filtre médian 
% Étape 6: Calculer le PSNR pour Y2 (bruit gaussien) 
mse_Y2 = mean((X1(:) - Y2(:)).^2); 
psnr_Y2 = 10 * log10(1^2 / mse_Y2); % MAX = 1 pour une image normalisée 
% Étape 7: Calculer le PSNR pour Y3 (bruit sel et poivre) 
mse_Y3 = mean((X1(:) - Y3(:)).^2); 
psnr_Y3 = 10 * log10(1^2 / mse_Y3); % MAX = 1 pour une image normalisée 
% Étape 8: Afficher les résultats de PSNR 
fprintf('PSNR pour l image après filtrage avec bruit gaussien (Y2) : %.2f dB\n', psnr_Y2); 
fprintf('PSNR pour l''image après filtrage avec bruit sel et poivre (Y3) : %.2f dB\n', psnr_Y3); 
% Commentaire sur les résultats 
if psnr_Y2 < 20 
fprintf('Le PSNR pour Y2 est inférieur à 20 dB, indiquant un débruitage insuffisant.\n'); 
else 
fprintf('Le PSNR pour Y2 est supérieur à 20 dB, indiquant un débruitage acceptable.\n'); 
end 
if psnr_Y3 < 20 
fprintf('Le PSNR pour Y3 est inférieur à 20 dB, indiquant un débruitage insuffisant.\n'); 
else 
fprintf('Le PSNR pour Y3 est supérieur à 20 dB, indiquant un débruitage acceptable.\n'); 
end 
% Étape 9: Afficher les images 
figure; 
subplot(1, 3, 1); 
imshow(X1); 
title('Image Originale (X1)'); 
subplot(1, 3, 2); 
imshow(X2); 
title(['Image avec Bruit Gaussien (X2, \sigma^2 = ', num2str(variance), ')']); 
subplot(1, 3, 3); 
imshow(Y2); 
title('Image après Filtrage Moyenneur (Y2)'); 
figure; 
subplot(1, 3, 1); 
imshow(X1); 
title('Image Originale (X1)'); 
subplot(1, 3, 2); 
imshow(X3); 
title(['Image avec Bruit Sel et Poivre (X3, p = ', num2str(p), ')']); 
subplot(1, 3, 3); 
imshow(Y3); 
title('Image après Filtrage Médian (Y3)');