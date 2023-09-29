*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${Premiere valeur }=    100
${Deuxieme valeur }=    200
${nom}=    Abdellah
${Troisieme valeur }=    200.5
${Browser}=    chrome
${Url}=    https://www.google.com


#Les variables de type liste
@{VILLE}=    montreal    laval
@{LIST VALEUR}=    1    2    3    4


#les variables de type dicionnaire  : on stock les données sous forme de pair clé :valuer 
&{URL-ENV}=    qa=https://www.google.qc.Ca    dev=https://www.google.dev.ca
*** Test Cases ***
tc02 mon premier test
  Log    ${Premiere valeur }
  Log    ${Deuxieme valeur }
  Log    ${nom}
  Log    ${Troisieme valeur }
  Log    ${Browser}
  Log    ${Url}
  Log    ${VILLE}[0]
  Log    ${VILLE}[1]
  Log    ${URL-ENV}[qa]
  Log    ${URL-ENV}[dev]
tc02 mon premier test
  ${Quatrieme valeur }=    Log    test