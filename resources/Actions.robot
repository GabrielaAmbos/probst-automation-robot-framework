*** Settings ***
Documentation       Este arquivo implementa as keyworks dos steps

Library  SeleniumLibrary
Resource    pages/LoginPage.robot
Resource    pages/BasePage.robot

*** Keywords *** 
Dado que eu acesso a página de login
    Open

Quando eu submeto minhas credenciais "${email}" e "${pass}"
   Login With  ${email}  ${pass}

Então devo ser autenticado
    Wait Until Page Contains    Automação

Então devo ver uma mensagem de alerta "${expect_message}"
    Alert should be present      ${expect_message}


Dado que eu estou logado
    Login With  robot@redigitize.com.br  @Lolzinho2020

Quando solicito agendar uma nova consulta
    Sleep                   5
    Execute Javascript      document.querySelector('#calendar > div.fc-view-container > div > table > tbody > tr > td > div > div > div.fc-content-skeleton > table > tbody > tr > td:nth-child(2) > div').click();
    Sleep                   5
