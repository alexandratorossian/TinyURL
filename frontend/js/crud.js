// crud.js

const CRUD = {
    fetchAndRedirect: function(tabId) {
        // Logique pour récupérer l'URL longue depuis le backend en fonction de l'onglet spécifique
        let shortUrl;
        switch (tabId) {
            case 'tinyurl_1':
                shortUrl = 'tinyurl_1';
                break;
            case 'tinyurl_2':
                shortUrl = 'tinyurl_2';
                break;
            case 'tinyurl_3':
                shortUrl = 'tinyurl_3';
                break;
            default:
                console.error('ID d\'onglet non reconnu');
                return;
        }

        // Logique AJAX pour récupérer l'URL longue associée à partir du backend
    
        fetch('/api/long-url?short_url=' + encodeURIComponent(shortUrl))
            .then(response => response.json())
            .then(data => {
                if (data.long_url) {
                    DOM.redirectToLongUrl(data.long_url);
                } else {
                    console.error('Lien long non trouvé');
                }
            })
            .catch(error => console.error('Erreur lors de la récupération du lien long :', error));
    }
};

export default CRUD;

