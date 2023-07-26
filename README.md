# projet_occazio_app
Commande lancement Test

1 . commande pour lancer un test dans browserstack
=> robot -d Results/Out Tests

2 . commande pour lancer les tests en parallèle avec "pabot" selon les fichiers d'env:
 => pabot --argumentfile1 Env/device1.resource --argumentfile2 Env/device2.resource --processes 2 Tests/ 

3 . commande pour lancer les tests en choisissant l'environnement selon la définition faite depuis le code (EX: Local, browserstack)
=> robot -d Results/Out -v env:LOCAL Tests
=> robot -d Results/Out -v env:BROWSERSTACK Tests
