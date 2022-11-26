*** Settings ***
Documentation        Suite de testes de autenticação
...                  O usuário deve acessar o sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser
Suite Teardown       Resetar Dados

*** Test Cases ***
Realizar o login de usuário 
    ${Jeff}    Get Fixture        jeff
    
    Go To Login Page
    Fill Credentials       ${Jeff}[email]        ${Jeff}[senha]    
    Submit Credentials
    Verify Alert           Bem vindo, ${Jeff}[name]!
