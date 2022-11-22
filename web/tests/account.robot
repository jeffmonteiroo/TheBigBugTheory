*** Settings ***
Documentation        Suite de testes de cadastro de conta
...                  O usuário deve cadastrar, editar e excluir contas no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser
*** Test Cases ***

Realizar o cadastro de conta 
    ${CONTA}=         FakerLibrary.Country
    Go To Create Account
    Fill Account Name            ${CONTA}
    Submit Account Name
    Verify Alert                Conta adicionada com sucesso!
    
Realizar o cadastro de conta com o nome já existente
    Go To Create Account
    Fill Account Name            teste01
    Submit Account Name
    Verify Alert                Já existe uma conta com esse nome!

Editar Conta
    ${CONTA}=               FakerLibrary.Country
    Go To List Account
    Click To Change First Account
    Fill Account Name       ${CONTA}
    Submit Account Name
    Verify Alert            Conta alterada com sucesso!

Deletar Conta
    Go To List Account
    Click To Delete The Second Account
    Verify Alert    Conta removida com sucesso!

  