# Journal de bord du projet encadré

# Semaine 1 – 24 septembre  
## Notions abordées en cours  
fichier, dossier/répertoire, dossier « parent », arborescence, racine, dossier personnel, dossier courant, chemin absolu ou relatif, caractères de remplacements (wildcards)  

## Travail à la maison  
J’ai réalisé l’exercice 1 à la maison, sur mon ordinateur fixe. J’ai copié les lignes de commandes utilisées :  

```
mkdir Exercice1  
cd Exercice1  
wget "http://plurital.org/ppe1/seance1/archive-25.zip"  
unzip archive-25.zip  
mkdir -p {txt,ann}/{2016,2017,2018}/{01,02,03,04,05,06,07,08,09,10,11,12}  
mkdir -p img/{Paris,Tokyo,Washington}  
mkdir docs  
mv 2016_01_*.txt txt/2016/01
```

J’ai découvert l’option -p + accolades avec la commande mkdir pour créer deux dossiers (parents) partageant la même structure interne (ici, les sous-dossiers « année » et les sous-sous-dossiers « mois »). Très pratique !  

## Réflexions personnelles  
-	Je connaissais la plupart des commandes présentées lors du cours. J’ai profité de l’occasion pour « feuilleter » les manuels (man) de ces fonctions et découvrir de nouvelles options.  
-	J’ai beaucoup utilisé les commandes git auparavant pour :  
    - envoyer sur github les améliorations apportées à mon projet personnel « Magister Conjugationis » (pour réviser mes conjugaisons en latin)
    - synchroniser le contenu de mes ordinateurs fixe et portable  
-	Je me suis donc créé deux tableaux (voir ci-dessous) pour me rappeler :  
    - les principales commandes git  
    - les dossiers les plus importants à la racine  
-	J’ai beaucoup aimé jouer avec les lignes de commandes du terminal et j’ai retrouvé l’envie passer la certification « Linux Essentials » du Linux Professional Institute (LPI) que j’avais commencé à préparer cet été mais que j’avais laissée de côté au profit de Python (il ne reste plus à présent qu'à trouver un centre où passer l'examen, et ce n'est pas une mince affaire).  

<img alt="image" src="https://github.com/user-attachments/assets/4dc32dd2-47d7-46cb-8bc2-15b20470e347" height="600"/>



# Semaine 2 – 1er octobre  
## Notions abordées en cours  
git vs github, ensemble des commandes git (en particulier commit), clé ssh  
Routine : git pull > modifications > git add / git rm > git commit > git push > git tag  
<img alt="image" src="img/GIT-commit.png" height="300"/>


## Réflexions personnelles  
-	J'avais créé ma clé SSH il y a quelque temps déjà pour les besoins de mes divers projets sur GitHub  
-	De même, j'étais déjà à l'aise avec les commandes git, indispensables pour communiquer entre mon profil GitHub et mes ordinateurs fixe et portable
-	Vivement la suite !   
