*** Settings ***
Documentation        Suite de testes de cadastro de conta
...                  O usuário deve cadastrar, editar e excluir contas no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource
Resource            ${CURDIR}/../resources/pages/accountPage.resource

Test Setup           Do Login
Test Teardown        Close Browser
Suite Teardown       Resetar Dados

*** Test Cases ***

Realizar o cadastro de Conta
    Go To Create Account
    Fill Account Name           Conta The Big Bug Theory
    Submit Account Name
    Verify Alert                Conta adicionada com sucesso!
    
Realizar o cadastro de uma conta já existente

    Go To Create Account
    Fill Account Name            Conta mesmo nome
    Submit Account Name
    Verify Alert                Já existe uma conta com esse nome!
  
Editar Conta
    Go To List Account
    Click To Change An Account
    Fill Account Name       Conta Alterada
    Submit Account Name
    Verify Alert            Conta alterada com sucesso!

Deletar Conta
    Go To List Account
    Click To Delete An Account
    Verify Alert    Conta removida com sucesso!

  