*** Settings ***
Resource          ${CURDIR}/../BDD/ResourceBDD.robot
Resource         ${CURDIR}/../BDD/BDDpt-br.robot    
Test Setup          Do Login
Test Teardown        Close Browser



*** Test Cases ***
CT01:Listar movimentação mensal do mês Anterior
    [Tags]        01
    Dado que eu esteja na tela Home
    E acesse a tela de resumo mensal
    Quando selecionar o mês anterior 
    E clicar em buscar
    Então deve listar o resumo mensal solicitado

## Resumo Mensal
CT02:Listar movimentação mensal do mês atual
    [Tags]        02
    Dado que eu esteja na tela Home
    E acesse a tela de resumo mensal
    Quando clicar em buscar
    Então deve listar o resumo mensal solicitado

CT03:Listar movimentação mensal do mês seguinte
    [Tags]        03
    Dado que eu esteja na tela Home
    E acesse a tela de resumo mensal
    Quando selecionar o mês seguinte
    E clicar em buscar
    Então deve listar o resumo mensal solicitado

CT04:Listar movimentação mensal de um determinado mês e ano
    [Tags]        04
    Dado que eu esteja na tela Home
    E acesse a tela de resumo mensal
    E selecione o mês de "Junho"
    E selecione o ano de "2021"
    Quando clicar em buscar
    Então deve listar o resumo mensal solicitado

CT05:Remover movimentação
    [Tags]        05
    Dado que eu esteja na tela Home
    E acesse a tela de resumo mensal
    E clicar em buscar
    Quando clico em remover uma movimentação
    Então a mensagem Movimentação removida com sucesso! é exibida






