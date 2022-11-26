*** Settings ***
Resource          ${CURDIR}/../resources/base.resource  


Test Setup           Do Login
Test Teardown        Close Browser
Suite Teardown       Resetar Dados



*** Test Cases ***
Listar movimentação mensal
    Home Page 
    Go To Monthly Summary 
    Click To Search
    Show monthly summary

Remover movimentação
    Home Page 
    Go To Monthly Summary 
    Click To Search
    Show monthly summary
    Remove Movement
    Verify Alert           Movimentação removida com sucesso!






