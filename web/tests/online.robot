*** Settings ***
Documentation        Verifica se a aplicação está online

Library    Browser

Test Teardown        Close Browser
*** Test Cases ***
Portal Seu Barriga deve estar online
    New Browser     headless=False    browser=chromium
    New Page        https://seubarriga.wcaquino.me/
    Get Text        nav    contains    Seu Barriga
