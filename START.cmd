@echo off

REM Vérifie si Node.js est déjà installé
node -v >nul 2>&1
if %errorlevel% equ 0 (
    echo Node.js est deja installe.
) else (
    echo Installation de Node.js...
    REM Télécharge l'installateur de Node.js
    curl -o nodeinstaller.msi https://nodejs.org/dist/latest/nodejs-latest-x64.msi
    
    REM Installe Node.js en mode silencieux
    start /wait msiexec /qb /i nodeinstaller.msi
    
    REM Supprime l'installateur
    del nodeinstaller.msi
    
    REM Vérifie à nouveau l'installation
    node -v >nul 2>&1
    if %errorlevel% equ 0 (
        echo Node.js a été installé avec succès.
    ) else (
        echo Une erreur s'est produite lors de l'installation de Node.js.
        exit /b 1
    )
)

REM Exécute la commande "npm start"
echo Execution de la commande "npm start"...
npm start

REM Fin du script
echo Le script est termine.
pause
