*** Settings ***
Library        Browser

*** Keywords ***

Fill Account Name
    [Arguments]    ${CONTA}
    Fill Text        css=input[id="nome"]        ${CONTA}

Submit Account Name
    Click        css=button >> text=Salvar

Click To Change An Account
    Click        xpath=//text()[contains(., "Conta para alterar")]//..//..//a[@href][1]

Click To Delete An Account
    Click       xpath=//text()[contains(., "Conta The Big Bug Theory")]//..//..//a[@href][2]
