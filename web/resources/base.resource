*** Settings ***
Documentation        Tudo começa aqui

Resource        pages/login.resource
Resource        pages/user.resource
Resource        components/alert.resource
Resource        components/navbar.resource
Resource        pages/account.resource
Resource        pages/movement.resource

*** Keywords ***
# Helpers
Do Login
    Go To Login Page
    Fill Credentials       jeffmonteiroo@gmail.com        123456    
    Submit Credentials
    Verify Alert           Bem vindo, Jeff!