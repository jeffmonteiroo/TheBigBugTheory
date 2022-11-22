*** Settings ***
Documentation            Representação do menu superior

Library        Browser

*** Keywords ***
Go To Create User Page
    Click    css=a[href="/cadastro"]

Go To Create Account
    Click        css=li[class="dropdown"] >> text=Conta
    Click        css=a[href="/addConta"]

Go To List Account
    Click        css=li[class="dropdown"] >> text=Conta
    Click        css=a[href="/contas"]

Go To Moviment Page
    Click    css=a[href="/movimentacao"]

Go To Monthly Summary
    Click    css=a[href="/extrato"]