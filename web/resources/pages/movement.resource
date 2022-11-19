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
    
Select Account
    Get Select Options      input[name="conta"]    
    #Click       teste01

Click To Change First Moviment
    Click         css=tbody > tr > td > a > .glyphicon-edit >> nth=0

Click To Delete The Second Moviment
    Click         xpath=//tbody/tr[2]/td >> .glyphicon-remove-circle 

