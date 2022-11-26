*** Settings ***
Library        Browser

*** Keywords ***

Fill Account Name
    [Arguments]    ${CONTA}
    Fill Text        css=input[id="nome"]        ${CONTA}

Submit Account Name
    Click        css=button >> text=Salvar

Click To Change An Account
    Click        xpath=//*/tbody/tr[1]/td[2]/a[1]

Click To Delete An Account
    Click        xpath=//*/tbody/tr[7]/td[2]/a[2]
