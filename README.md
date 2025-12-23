# Image Processing – Noise & Filtering (MATLAB)

Ce dépôt GitHub contient une série de **projets et scripts MATLAB** réalisés dans le cadre d’un **TP de Traitement d’Image**.  
L’objectif principal est d’étudier l’impact de différents types de bruit sur une image et d’analyser l’efficacité des techniques de filtrage pour améliorer la qualité visuelle et quantitative des images.

---

##  Objectifs pédagogiques

- Comprendre les principaux types de bruit en traitement d’image
- Implémenter et comparer différentes méthodes de filtrage
- Évaluer la qualité des images filtrées à l’aide de métriques objectives
- Manipuler et visualiser des images sous MATLAB

---

##  Outils utilisés

- **MATLAB**
- Image Processing Toolbox

---

##  Contenu du dépôt

###  Images utilisées
- **black_cat.jpg**  
  Image de test utilisée pour l’ajout de bruit et l’application des filtres.

---

###  Scripts MATLAB

####  Bruits (Noise)
- `gaussian_noise.m`  
  Ajout de bruit gaussien à une image.

- `noise_gaussian_multiple_variances.m`  
  Étude de l’effet de différentes variances du bruit gaussien.

- `salt_and_pepper_noise.m`  
  Ajout de bruit impulsionnel (sel et poivre).

- `sault_and_pepper_noise_multiple.m`  
  Analyse de l’impact de différentes densités du bruit sel et poivre.

- `all_noise_types.m`  
  Comparaison des principaux types de bruit sur une même image.

---

####  Filtrage (Filtering)
- `medfilter.m`  
  Application du filtre médian pour réduire le bruit impulsionnel.

- `noise_and_filters.m`  
  Comparaison entre image bruitée et image filtrée.

---

####  Analyse et métriques
- `Peak_Signal_to_Noise_Ratio.m`  
  Calcul du **PSNR (Peak Signal-to-Noise Ratio)** pour évaluer la qualité de l’image restaurée.

- `image_normalized.m`  
  Normalisation de l’intensité des pixels pour améliorer l’affichage et le traitement.

- `line_128.m`  
  Analyse du profil de luminance d’une ligne d’image (ligne 128).

---

##  Résultats et observations

- Le bruit gaussien dégrade progressivement l’image lorsque la variance augmente.
- Le bruit sel et poivre crée des pixels fortement perturbés.
- Le filtre médian est particulièrement efficace contre le bruit impulsionnel.
- Le PSNR permet une évaluation quantitative de la qualité des images filtrées.
- La normalisation améliore la lisibilité et la stabilité du traitement.

---

##  Exemple de workflow

1. Charger l’image originale
2. Ajouter un type de bruit (gaussien ou sel et poivre)
3. Appliquer un filtre adapté
4. Visualiser les résultats
5. Calculer le PSNR pour comparer les performances

---

##  Auteure

**Roua Jendoubi**  
Étudiante en télécommunications / traitement du signal et de l’image  
Travaux réalisés dans le cadre d’un **TP de Traitement d’Image**

---


