%lire et normaliser l'image
X1=imread('black_cat.jpg');
X1=im2double(X1);
%appliquer un bruit gaussien avec sigma^2=0.01
variance=0.01;
X2=imnoise(X1,'gaussian',0,variance);
%appliquer un bruit poivre et sel avec p=0.05
p=0.05;
X3=imnoise(X1,'salt & pepper',p);
%extraire la ligne 128 de chaque image
line_number=128;
X1_line=X1(line_number,:);
X2_line=X2(line_number,:);
X3_line=X3(line_number,:);
%afficher les lignes sur la meme ligne
figure;
hold on;
plot(X1_line,'b','linewidth',1.5)
plot(X2_line,'r','LineWidth',1.5)
plot(X3_line,'k','LineWidth',1.5)
hold off;
title('ligne 128 des images')
xlabel('position des pixels')
ylabel('intensité des pixels')
legend('image originale(X1)','bruit gaussien (X2)','bruit poivre et sel (X3)')
grid on 