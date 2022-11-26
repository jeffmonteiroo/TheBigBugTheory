*** Settings ***
Documentation        Tudo começa aqui

Library        DateTime
Library        JSONLibrary

Resource        ${CURDIR}/pages/loginPage.resource
Resource        ${CURDIR}/pages/userPage.resource
Resource        ${CURDIR}/components/alert.resource
Resource        ${CURDIR}/components/navbar.resource
Resource        ${CURDIR}/pages/accountPage.resource
Resource        ${CURDIR}/pages/movementPage.resource
Resource        ${CURDIR}/pages/monthly_summaryPage.resource
Resource        ${CURDIR}/pages/homePage.resource


*** Keywords ***
# Helpers

Get Fixture
    [Arguments]      ${fixture_file}

    ${fixture}        Load JSON From File
    ...                ${CURDIR}/fixtures/${fixture_file}.json
    ...               encoding=UTF-8

    [return]        ${fixture}

Do Login
    ${user}    Get Fixture        chaves
    Go To Login Page
    Fill Credentials      ${user}[email]        ${user}[senha] 
    Submit Credentials
    Verify Alert           Bem vindo, ${user}[name]!



Resetar Dados
    Do Login
    Click        css=a[href="/reset"]

Encerrar sessão
    Close Browser

