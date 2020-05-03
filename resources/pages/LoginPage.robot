*** Settings *** 

Documentation       Este arquivo implementa funcoes e elementos da pagina login
Library     SeleniumLibrary

*** Keywords ***
Login With
    [Arguments]     ${email}        ${senha}

    Input Text      name:email      ${email}
    Input Text      name:senha      ${senha}
    Click Element   class:btn