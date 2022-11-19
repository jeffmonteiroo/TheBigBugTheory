*** Settings ***
Documentation        Suite de testes de criação de movimentação
...                  O usuário deve cadastrar a movimentação de receita e despesa no sistema Seu Barriga

Resource            ../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser
*** Test Cases ***
Criar uma movimentação de receita paga
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y
    ${payday} =	           Subtract Time From Date    	${time}    7days     result_format=%d/%m/%Y    #subtraindo 7 dias do dia atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date            ${date}
    Pay Date                 ${payday}
    Description              Pagamento realizado por ${nome}
    Interested Person        ${nome}
    Amount To Be Paid         ${randomNumber} 
    #Select Account           

    Sleep            10
   
  