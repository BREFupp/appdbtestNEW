# appdbtestNEW
 26.11.19

Hello cher collègue dev! 
Je suis ta prédecesseure Cellia =) 

J'écris ces quelques lignes ici pour expliquer un peu mon raisonnement par rapport aux fichiers qui se trouvent dans ce dossier.

Ceci est la partie backend que j'ai faite avec Symfony 4 (la version 5 vient de sortir! donc il faudra sûrement mettre à jour les fichiers).
Si tu as vu Symfony en cours, tu connais donc l'architecture de base avec les controllers, entity et templates propres au langage. 

L'appli a 3 catégories : Actus/news, Aidants et Patients qui correspondent au 3 volets de l'application finale.
Il y a donc 3 controllers avec 2 entités pour chaque (l'une pour la grille d'affichage de tous les articles sur l'accueil, et l'autre pour la page d'un article une fois sélectionné)

Il y a ensuite 3 sous-dossiers de templates qui correspondent aux catégories mentionnées plus haut et qui contiennent chacun les templates "ajout, articles et show". 
En les feuilletant tu verras à quoi sert chaque page twig. 

Dans le .env la base de données "ebref_app2" est déjà paramétrée. Donc tu n'auras normalement pas besoin de la recréer.

l'arborescence contient déjà toutes les images des cartes pour les aidants fournies par l'UPP dans le dossier IMG.
Le dossier JS contiendra tous les fichiers relatifs aux fonctions spécifiques pour les interactions utilisateur.

Pour développer j'ai principalement utilisé le terminal (ctrl + shift + ù) et tu as aussi la console directement sur chrome en faisant un clic droit ("inspecter le code").