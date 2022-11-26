*** Settings ***
Documentation        Suite de testes de criação de movimentação
...                  O usuário deve cadastrar a movimentação de receita e despesa no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser
Suite Teardown       Resetar Dados

*** Test Cases ***
Criar movimentação de receita paga do dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
   
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${date}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Paid Status          
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!

Criar movimentação de receita pendente do dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
   ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${date}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status         
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!
       
Criar movimentação de despesa paga no dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
   ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${date}
    Description                   Despesa realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Paid Status          
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!

Criar movimentação de despesa pendente no dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${date}
    Description                   Despesa realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status         
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!


