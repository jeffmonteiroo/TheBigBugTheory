*** Settings ***
Library            Browser
Library            FakerLibrary       locale=pt_BR


*** Keywords ***

Fill Registration
    [Arguments]    ${USERNAME}        ${USEREMAIL}       ${USERPASSWORD}
    Fill Text        input[id="nome"]         ${USER_NAME}  
    Fill Text        input[id="email"]        ${USEREMAIL}
    Fill Text        input[id="senha"]        ${USERPASSWORD}

Submit Registration
    Click        css=input >> text=Cadastrar

Field Type Should Be Email
    Get Attribute       css=input[id="email"] 
    ...        type        equal    email


