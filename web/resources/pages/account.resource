*** Settings ***
Library        Browser

*** Keywords ***

Fill Account Name
    [Arguments]    ${CONTA}
    Fill Text        input[id="nome"]        ${CONTA}

Submit Account Name
    Click        css=button >> text=Salvar

Click To Change First Account
    Click         css=tbody > tr > td > a > .glyphicon-edit >> nth=0

Click To Delete The Second Account
    Click         xpath=//tbody/tr[2]/td >> .glyphicon-remove-circle 

