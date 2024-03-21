

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("tinyurl_1-tab").addEventListener("click", function(event) {
        event.preventDefault();
        console.log("Clic sur l'onglet tinyurl_1");
        redirectToLongUrl('tinyurl_1');
    });

    document.getElementById("tinyurl_2-tab").addEventListener("click", function(event) {
        event.preventDefault();
        console.log("Clic sur l'onglet tinyurl_2");
        redirectToLongUrl('tinyurl_2');
    });

    document.getElementById("tinyurl_3-tab").addEventListener("click", function(event) {
        event.preventDefault();
        console.log("Clic sur l'onglet tinyurl_3");
        redirectToLongUrl('tinyurl_3');
    });
});

function redirectToLongUrl(tabId) {
    console.log("Envoi de la requête pour récupérer l'URL longue de", tabId);
    fetch(`api/long-url/${tabId}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Erreur lors de la récupération de l\'URL longue');
            }
            return response.json();
        })
        .then(data => {
            console.log("URL longue récupérée :", data.long_url);
            window.location.href = data.long_url;
        })
        .catch(error => {
            console.error('Erreur lors de la récupération de l\'URL longue:', error);
        });
}
