*** Settings ***
Library        Browser

Library        DateTime

*** Keywords ***

 Fill Of The Type Movement


Movement Date
    [Arguments]      ${DATAMOV}
    Fill Text        input[id="data_transacao"]    ${DATAMOV}

Pay Date
    [Arguments]      ${DATAPAG}
    Fill Text        input[id="data_pagamento"]    ${DATAPAG}

Description
    [Arguments]      ${DESC}
    Fill Text        input[name="descricao"]    ${DESC}

Interested Person
    [Arguments]      ${PERSON}
    Fill Text        input[name="interessado"]    ${PERSON}

Amount To Be Paid
    [Arguments]      ${AMOUNT}
    Fill Text        input[id="valor"]        ${AMOUNT}

Select the account
     [Arguments]      ${selectAccount}
    Press Keys                   css=select[id="conta"]      ${selectAccount}

Select Paid Status
    Click                     css=input[id="status_pago"]        

Select Pending Status
    Click                     css=input[id="status_pendente"]     

Click To Save
    Click                      css=button >> text=Salvar

Select The Type Of Movement
     [Arguments]              ${selectMovement}
    Press Keys                css=select[id="tipo"]      ${selectMovement}

