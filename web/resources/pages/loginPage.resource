*** Settings ***
Library        Browser

*** Keywords ***
Go To Login Page
    New Browser     headless=False    browser=chromium
    New Page        https://seubarriga.wcaquino.me

Fill Credentials
    [Arguments]    ${email}        ${pass}

    Fill Text        input[id="email"]        ${email}
    Fill Text        input[id="senha"]        ${pass}

Submit Credentials
    Click        css=button >> text=Entrar