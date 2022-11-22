*** Settings ***
Documentation        Suite de testes de criação de movimentação
...                  O usuário deve cadastrar a movimentação de receita e despesa no sistema Seu Barriga

Resource            ${CURDIR}/../resources/base.resource

Test Setup           Do Login
Test Teardown        Close Browser
*** Test Cases ***
Criar movimentação de receita paga no dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date	        	${time}              result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Paid Status          
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!

Criar movimentação de receita pendente no dia atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	            ${time}    	         result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date	        	${time}              result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status         
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!
   

Criar movimentação de receita paga no mês anterior

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Paid Status          
    Click To Save
    Verify Alert                  Movimentação adicionada com sucesso!

Criar movimentação de receita pendente no mês anterior

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Movement Date                 ${date}
    Pay Date                      ${payday}
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
    ${payday} =	           Convert Date	        	${time}              result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
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
    ${payday} =	           Convert Date	        	${time}              result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Despesa realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status         
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!


Criar movimentação de despesa paga no mês anterior

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Despesa paga por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Paid Status          
    Click To Save
    Verify Alert                  Movimentação adicionada com sucesso!

Criar movimentação de despesa pendente no mês anterior

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Despesa Pendente de ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert            Movimentação adicionada com sucesso!

Campo data da movimentação é obrigatório
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                   Data da Movimentação é obrigatório

Campo data do pagamento é obrigatório

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 1days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                   Data do pagamento é obrigatório

Campo descricao é obrigatório
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert            Descrição é obrigatório

Campo interessado é obrigatório

    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert            Interessado é obrigatório

Campo Valor é um campo obrigatório
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Subtract Time From Date              ${time}    	 30days        result_format=%d/%m/%Y       #data atual
    ${payday} =	           Subtract Time From Date	        	${time}      30days        result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert            Valor é obrigatório
    Verify Alert            Valor deve ser um número

Validar se todos os campos são obrigatórios
    Go To Moviment Page
    Click To Save
    Verify Alert            Data da Movimentação é obrigatório
    Verify Alert            Data do pagamento é obrigatório
    Verify Alert            Descrição é obrigatório
    Verify Alert            Interessado é obrigatório
    Verify Alert            Valor é obrigatório
    Verify Alert            Valor deve ser um número
Validar o formato do campo data da movimentação  
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	                ${time}    	         result_format=%d.%m.%Y       #data atual
    ${payday} =	           Convert Date		        	${time}              result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                   Data da Movimentação inválida (DD/MM/YYYY)

Validar o formato do campo data do pagamento
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	                ${time}    	         result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date		        	${time}              result_format=%d.%m.%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                   Data do pagamento inválida (DD/MM/YYYY)

Validar o campo valor se aceita letras
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	                ${time}    	         result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date		        	${time}              result_format=%d.%m.%Y       #data atual
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             1b2 
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                  Valor deve ser um número

Validar o campo valor se aceita caracteres especiais
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Convert Date	                ${time}    	         result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date		        	${time}              result_format=%d.%m.%Y       #data atual
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid            R$ 1,00
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                  Valor deve ser um número


Data da Movimentação deve ser menor ou igual à data atual
    ${nome}=               FakerLibrary.name
    ${time} =	           Get Time    
    ${date} =	           Add Time To Date                ${time}    	 2days                result_format=%d/%m/%Y       #data atual
    ${payday} =	           Convert Date		        	   ${time}                            result_format=%d/%m/%Y       #data atual
    ${randomNumber}        FakerLibrary.Randomize Nb Elements        1000    10000
    Go To Moviment Page
    Select The Type Of Movement    d
    Movement Date                 ${date}
    Pay Date                      ${payday}
    Description                   Pagamento realizado por ${nome}
    Interested Person             ${nome}
    Amount To Be Paid             ${randomNumber}  
    Select The Account             t
    Select Pending Status          
    Click To Save
    Verify Alert                   Data da Movimentação deve ser menor ou igual à data atual



