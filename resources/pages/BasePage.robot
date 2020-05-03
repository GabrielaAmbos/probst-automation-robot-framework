*** Settings ***
Documentation       Este arquivo implementa o start e o closed do navegador


*** Keywords ***
Open
    Open Browser    http://probstodontologia.com.br/dev/admin/login/     chrome
    Set Selenium Implicit Wait          10

Close
    Close Browser