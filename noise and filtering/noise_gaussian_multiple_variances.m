%lire et normaliser l'image X1
X1=imread('black_cat.jpg');
X1=im2double(X1);
%variation de la variance
variances=[0.001,0.01,0.05,0.1];
figure;
for i=1:length(variances)
    %appliquier le bruit gaussien
    X2=imnoise(X1,'gaussian',0,variances(i));
%affichage des images en fonction des differentes variances
subplot(2,2,i)
imshow(X2)
title(['bruit gaussien (\sigma^2= ',num2str(variances(i)),')'] )
end
