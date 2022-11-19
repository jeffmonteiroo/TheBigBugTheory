*** Settings ***
Documentation        Suite de testes de autenticação
...                  O usuário deve acessar o sistema Seu Barriga

Resource            ../resources/base.resource

Test Teardown        Close Browser

*** Test Cases ***
Realizar o login de usuário 
    Go To Login Page
    Fill Credentials       jeffmonteiroo@gmail.com        123456    
    Submit Credentials
    Verify Alert           Bem vindo, Jeff!

E-mail não cadastrado
    ${EMAILFAKE}=          FakerLibrary.Email
    Go To Login Page
    Fill Credentials        ${EMAILFAKE}        123456    
    Submit Credentials
    Verify Alert           Problemas com o login do usuário

Senha incorreta
    Go To Login Page
    Fill Credentials       jeffmonteiroo@gmail.com        12345    
    Submit Credentials
    Verify Alert           Problemas com o login do usuário

E-mail com o formato incorreto
    Go To Login Page
    Fill Credentials       jeffmonteiroogmail.com        12345    
    Submit Credentials
    Field Type Should Be Email

E-mail em branco
    Go To Login Page
    Fill Credentials       ${EMPTY}       123456    
    Submit Credentials
    Verify Alert          Email é um campo obrigatório

Senha em branco
    Go To Login Page
    Fill Credentials       jeffmonteiro@gmail.com       ${EMPTY}    
    Submit Credentials
    Verify Alert           Senha é um campo obrigatório

E-mail e senha em branco
    Go To Login Page
    Submit Credentials
    Verify Alert           Email é um campo obrigatório
    Verify Alert           Senha é um campo obrigatório

