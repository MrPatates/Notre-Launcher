# Authentification Microsoft

L'authentification par Microsoft est entièrement prise en charge par Helios Launcher.

## Acquisition d'un identifiant client Azure

1. Naviguez jusqu'à https://portal.azure.com
2. Dans la barre de recherche, recherchez **Azure Active Directory**.
3. Dans Azure Active Directory, allez à **App Registrations** dans le panneau de gauche (sous *Manage*).
4. Cliquez sur **New Registration** (Nouvel enregistrement).
    - Définissez **Name** comme étant le nom de votre lanceur.
    - Définissez **Types de comptes pris en charge** sur *Comptes dans n'importe quel répertoire organisationnel (n'importe quel répertoire Azure AD - Multitenant) et comptes Microsoft personnels (par ex. Skype, Xbox)*.
    - Laissez **Redirect URI** vide.
    - Enregistrez l'application.
5. Vous devriez être sur la page de gestion de l'application. Si ce n'est pas le cas, retournez à **App Registrations**. Sélectionnez l'application que vous venez d'enregistrer.
6. Cliquez sur **Authentication** dans le volet de gauche (sous *Gestion*).
7. Cliquez sur **Ajouter une plateforme**.
    - Sélectionnez **Applications mobiles et de bureau**.
    - Choisissez `https://login.microsoftonline.com/common/oauth2/nativeclient` comme **Redirect URI**.
    - Sélectionnez **Configurer** pour terminer l'ajout de la plateforme.
8. Retournez à **Overview**.
9. Copiez **Identification de l'application (client)**.


Référence: https://docs.microsoft.com/en-us/azure/active-directory/develop/quickstart-register-app

## Ajout de l'identifiant du client Azure à Notre Launcher.

In `app/assets/js/ipcconstants.js` you'll find **`AZURE_CLIENT_ID`**. Set it to your application's id.

Note: Azure Client ID is NOT a secret value and **can** be stored in git. Reference: https://stackoverflow.com/questions/57306964/are-azure-active-directorys-tenantid-and-clientid-considered-secrets

----

You can now authenticate with Microsoft through the launcher.