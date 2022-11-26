*** Settings ***
Documentation        Suite de testes de cadastro
...                  O usuário deve se cadastrar no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource


Test Teardown        Close Browser

*** Test Cases ***
Realizar o cadastro de usuário 

    ${NOME}=               FakerLibrary.name
    ${EMAILFAKE}=          FakerLibrary.Email
    ${PASS}=               FakerLibrary.Password
    Go To Login Page
    Go To Create User Page
    Fill Registration      ${NOME}         ${EMAILFAKE}        ${PASS}    
    Submit Registration
    Verify Alert           Usuário inserido com sucesso
