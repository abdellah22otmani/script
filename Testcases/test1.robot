*** Settings ***
Resource     ../resource/ressource01.robot
Documentation    Cette suite de test est créée par abdellah
Suite Setup    Log    J'execute une fois avant le test
Suite Teardown    Log    J'execute une seule fois apres le test
Test Setup    Se connecter a l'application orange demo
Test Teardown    fermer l'application


*** Test Cases ***
tc01 login test  
    when Saisir le nom d'utilisateur
    And Saisir le mot de passe 
    And Cliquer sur le bouton login
    then valider l'affichage de la page d'acceuil
    #Log    fins des tests





 