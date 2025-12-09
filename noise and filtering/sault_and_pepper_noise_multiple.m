%lire et normaliser l'image
X1=imread('black_cat.jpg');
X1=im2double(X1);
%les differentes valeurs du pourcentage
pourcentages=[0.01,0.05,0.1,0.2];
figure;
%appliquer le buit poivre et sel
for i =1: length(pourcentages)
    X3=imnoise(X1,'salt & pepper',pourcentages(i));
    subplot(2,2,i)
    imshow(X3)
    title(['bruit poivre et sel (p= ',num2str(pourcentages(i)),')'])
end
