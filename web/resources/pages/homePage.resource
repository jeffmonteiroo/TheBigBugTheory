*** Settings ***
Library        Browser

*** Keywords ***
Home Page
    Wait For Elements State
    ...    css=span[style="text-align: center"] >> text= Seu Barriga. Nunca mais esqueça de pagar o aluguel.
    ...    visible    5
