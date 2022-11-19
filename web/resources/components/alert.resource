*** Settings ***
Documentation            Reporesentação das mensagens de alerta

Library        Browser


*** Keywords ***
Verify Alert
    [Arguments]        ${expected_message}

    Wait For Elements State
    ...    css=div[role="alert"] >> text=${expected_message}
    ...    visible    5
