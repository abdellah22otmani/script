*** Settings ***
Library    SeleniumLibrary
*** Variables ***





*** Test Cases ***
tc01 
  [tags]    regression
  Log    test1
tc02
  [tags]    regression
  Log    test2

tc03
  [tags]    sanity
  Log    test3

tc04
  [tags]    sanity
  Log    test4
tc05
  [tags]    performance
  Log    test5
tc06
  [tags]    performance
  Log    test6


  #pour excute tout les test dans le dossier testcases  : robot .
