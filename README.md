# TinyURL

TinyURL est un applicatif de gestion de liens courts.

## Installation

1. Clonez ce dépôt dans votre environnement de développement :

git clone https://github.com/votre-utilisateur/tinyurl.git


2. Accédez au répertoire du projet :
  ```
cd tinyurl
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

7. Configurez votre base de données dans le fichier `.env`.

8. Exécutez les migrations pour créer les tables de base de données ou éxécuter le fichier SQL fourni dans docs :

```
php artisan migrate
```

9. Démarrez le serveur de développement PHP :
```
php artisan serve
```

10. Démarrez le serveur de développement npm :
 ```
 npm run watch
 ```



## Utilisation

Une fois le serveur démarré, accédez à l'application dans votre navigateur à l'adresse `http://localhost:8000`.





