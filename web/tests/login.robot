*** Settings ***
Documentation        Suite de testes de autenticação
...                  O usuário deve acessar o sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser


*** Test Cases ***
Realizar o login de usuário 
    ${user}    Get Fixture        chaves
    
    Go To Login Page
    Fill Credentials       ${user}[email]        ${user}[senha]    
    Submit Credentials
    Verify Alert           Bem vindo, ${user}[name]!
