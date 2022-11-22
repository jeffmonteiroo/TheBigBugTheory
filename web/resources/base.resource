*** Settings ***
Documentation        Tudo começa aqui

Library        DateTime

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
Do Login
    Go To Login Page
    Fill Credentials       jeffmonteiroo@gmail.com        123456    
    Submit Credentials
    Verify Alert           Bem vindo, Jeff!