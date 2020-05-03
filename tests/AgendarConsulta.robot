*** Settings ***
Documentation       Agendar uma Consulta
...     Sendo um administrador do sistema de dentista
...     Quero agendar consultas
...     Para que meus clientes possam visualizar os horários

Resource        ../resources/Actions.robot
Test Setup      BasePage.Open
Test Teardown   BasePage.Close

*** Test Cases ***
Agendamento com sucesso
    Dado que eu estou logado
    Quando solicito agendar uma nova consulta
    Então devo ver a consulta no calendário
