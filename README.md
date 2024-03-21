# TinyURL

TinyURL est un applicatif de gestion de liens courts.

## Installation

1. Clonez ce dépôt dans votre environnement de développement :


2. Accédez au répertoire du projet dans le dossier backend :
  ```
cd votrechemin\TinyURL\backend
``` 

3. Installez les dépendances PHP avec Composer :
```
composer install
```


4. Installez les dépendances JavaScript avec npm :
```
npm install
```

5. Copiez le fichier `.env.example` et renommez-le en `.env`
   

6. Générez une nouvelle clé d'application Laravel :
```
php artisan key:generate
```

7. Configurez votre base de données dans le fichier `.env` et créez une base de données vide `tinyurl` dans votre gestionnaire de BDD.

8. Exécutez les migrations pour créer les tables de base de données OU exécuter le fichier SQL fourni dans docs :

```
php artisan migrate
```

9. Démarrez le serveur de développement PHP :
```
php artisan serve
```

10. Démarrez le serveur de développement npm :
 ```
 npm run dev
 ```



## Utilisation

Une fois le serveur démarré, accédez à l'application dans votre navigateur via votre localhost, exemple 
`http://localhost:8000/TinyURL/frontend/index.html`.

Pour le back-office, accédez à celui-ci via le serveur PHP `http://127.0.0.1:8000/login`.





