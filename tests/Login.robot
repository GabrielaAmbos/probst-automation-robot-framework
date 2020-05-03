*** Settings ***
Documentation       Login
...     Sendo um administrador do sistema de dentista
...     Quero me autenticar
...     Para que eu possa gerenciar a agenda da clinica

Resource        ../resources/Actions.robot
Test Teardown   BasePage.Close

*** Test Cases ***
Login com sucesso
    Dado que eu acesso a página de login
    Quando eu submeto minhas credenciais "robot@redigitize.com.br" e "@Lolzinho2020"
    Então devo ser autenticado

Senha incorreta
    Dado que eu acesso a página de login
    Quando eu submeto minhas credenciais "robot@redigitize.com.br" e "123abc"
    Então devo ver uma mensagem de alerta "Erro ao fazer login, verifique seus dados e tente novamente."

Email incorreto
    Dado que eu acesso a página de login
    Quando eu submeto minhas credenciais "fakeemail@ninjapixel.com" e "@Lolzinho2020"
    Então devo ver uma mensagem de alerta "Erro ao fazer login, verifique seus dados e tente novamente."
