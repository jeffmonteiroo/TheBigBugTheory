*** Settings ***
Documentation        Suite de testes de cadastro
...                  O usuário deve se cadastrar no sistema Seu Barriga

Resource            ../resources/base.resource

Test Setup             Go To Login Page
Test Teardown          Close Browser  
*** Test Cases ***
Realizar o cadastro de usuário 

    ${NOME}=               FakerLibrary.name
    ${EMAILFAKE}=          FakerLibrary.Email
    ${PASS}=               FakerLibrary.Password
    Go To Create User Page
    Fill Registration      ${NOME}         ${EMAILFAKE}        ${PASS}    
    Submit Registration
    Verify Alert           Usuário inserido com sucesso

Realizar o cadastro sem informar o nome
    ${EMAILFAKE}=          FakerLibrary.Email
    ${PASS}=               FakerLibrary.Password
    Go To Create User Page
    Fill Registration       ${EMPTY}         ${EMAILFAKE}        ${PASS}    
    Submit Registration
    Verify Alert           Nome é um campo obrigatório

Realizar o cadastro sem informar o e-mail
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password
    Go To Create User Page
    Fill Registration       ${NOME}         ${EMPTY}        ${PASS}    
    Submit Registration
    Verify Alert           Email é um campo obrigatório
Realizar o cadastro sem informar a senha
    ${NOME}=               FakerLibrary.name
    ${EMAILFAKE}=          FakerLibrary.Email
    Go To Create User Page
    Fill Registration       ${NOME}         ${EMAILFAKE}        ${EMPTY}
    Submit Registration
    Verify Alert          Senha é um campo obrigatório

Realizar o cadastro com todos os campos em branco
    Go To Create User Page
    Fill Registration       ${EMPTY}         ${EMPTY}        ${EMPTY}
    Submit Registration
    Verify Alert           Nome é um campo obrigatório
    Verify Alert           Email é um campo obrigatório
    Verify Alert           Senha é um campo obrigatório

Realizar o cadastro com e-mail inválido
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password
    Go To Create User Page
    Fill Registration      ${NOME}         jeffmonteiroo.com.br      ${PASS}    
    Submit Registration
    Field Type Should Be Email
Realizar o cadastro com o e-mail já utilizado
    ${NOME}=               FakerLibrary.name
    ${PASS}=               FakerLibrary.Password
    Go To Create User Page
    Fill Registration      ${NOME}         jeffmonteiroo@gmail.com       ${PASS}    
    Submit Registration
    Verify Alert           Endereço de email já utilizado