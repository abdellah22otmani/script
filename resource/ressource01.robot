*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge

*** Keywords ***
Se connecter a l'application orange demo  
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 
  sleep   2
 Saisir le nom d'utilisateur
  Clear Element Text    name:username
  Input Text    name:username    Admin
  sleep   2
Saisir le mot de passe
  Clear Element Text    name:password
  Input Password    name:password    admin123
  sleep    3
Cliquer sur le bouton login
  Click Button    Xpath://Button
  sleep    3
valider l'affichage de la page d'acceuil
  Element Text Should Be    Xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[1]/span/h6    Dashboard

fermer l'application
  Close Browser