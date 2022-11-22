*** Settings ***
Library        Browser

Library        DateTime
Library    FakerLibrary


*** Variables ***



*** Keywords ***
Should be contain on page
    Wait For Elements State    css=table[id="tabelaExtrato"]         visible    timeout=2 s

Select The Previous Month

    ${date} =	            Get Time    
    ${lastMount} =	        Subtract Time From Date	        	  ${date}      30days        result_format=%m            
    ${number} =             Convert To Integer                    ${lastMount} 
    ${year}=                Subtract Time From Date        	      ${date}      30days        result_format=%y
    ${valueYear} =          Convert To Integer                    ${year}

    Focus                        css=select[id="mes"]
     IF     ${number} < 1
    Log To Console    'isso não deveria acontecer'
    ELSE IF     ${number} == 1
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${number} == 2
    Press Keys                   css=select[id="mes"]      F
    ELSE IF     ${number} == 3
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${number} == 4
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${number} == 5
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${number} == 6
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${number} == 7
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${number} == 8
    Press Keys                   css=select[id="mes"]      A
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${number} == 9
    Press Keys                   css=select[id="mes"]      S
    ELSE IF     ${number} == 10
    Press Keys                   css=select[id="mes"]      O
    ELSE IF     ${number} == 11
    Press Keys                   css=select[id="mes"]      N
    ELSE IF    ${number} == 12
    Press Keys                    css=select[id="mes"]      D  
        IF     ${valueYear} == 22
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    2
        
        ELSE IF     ${valueYear} == 23
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    3
        
        ELSE IF     ${valueYear} == 24
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    4
        
        ELSE IF     ${valueYear} == 25
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    5

        ELSE IF     ${valueYear} == 26
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    6
        END  
    ELSE IF    ${number} > 12
    Log To Console    'Isso tbm não deveria acontecer'   

    END


 Click To Search
     Click                      css=input >> text=Buscar

Show monthly summary
     Get Attribute         table[id="tabelaExtrato"] 
     ...                    class            equal        table

Select Next Month
    ${date} =	            Get Time    
    ${lastMount} =	        Add Time To Date        	 ${date}      60days        result_format=%m            
    ${number} =             Convert To Integer           ${lastMount} 
    ${year}=                Add Time To Date         	 ${date}      60days        result_format=%y
    ${valueYear} =          Convert To Integer           ${year}

     Focus                        css=select[id="mes"]
     IF     ${number} < 1
    Log To Console    'não era para isso acontecer'
    ELSE IF     ${number} == 1
    Press Keys                   css=select[id="mes"]      J
           IF     ${valueYear} == 22
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    2
        
        ELSE IF     ${valueYear} == 23
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    3

        Press Keys                    css=select[id="ano"]      Backspace
        
        ELSE IF     ${valueYear} == 24
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    4
        
        ELSE IF     ${valueYear} == 25
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    5

        ELSE IF     ${valueYear} == 26
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    6
        END  
    ELSE IF     ${number} == 2
    Press Keys                   css=select[id="mes"]      F
    ELSE IF     ${number} == 3
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${number} == 4
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${number} == 5
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${number} == 6
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${number} == 7
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${number} == 8
    Press Keys                   css=select[id="mes"]      A
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${number} == 9
    Press Keys                   css=select[id="mes"]      S
    ELSE IF     ${number} == 10
    Press Keys                   css=select[id="mes"]      O
    ELSE IF     ${number} == 11
    Press Keys                   css=select[id="mes"]      N
    ELSE IF    ${number} == 12
    Press Keys                    css=select[id="mes"]      D  

    ELSE IF    ${number} > 12
    Log To Console    'Isso tbm não deveria acontecer'   

    END

Select Mouth
    [Arguments]       ${month} 
    
    Focus                        css=select[id="mes"]
    Sleep    5
        IF     ${month} == "Janeiro"
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${month} == "Fevereiro"
    Press Keys                   css=select[id="mes"]      F
    ELSE IF     ${month} == "Março"
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${month} == "Abril"
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${month} == "Maio"
    Press Keys                   css=select[id="mes"]      M
    ELSE IF     ${month} == "Junho"
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${month} == "Julho"
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    Press Keys                   css=select[id="mes"]      J
    ELSE IF     ${month} == "Agosto"
    Press Keys                   css=select[id="mes"]      A
    Press Keys                   css=select[id="mes"]      A
    ELSE IF     ${month} == "Setembro"
    Press Keys                   css=select[id="mes"]      S
    ELSE IF     ${month} == "Outubro""
    Press Keys                   css=select[id="mes"]      O
    ELSE IF     ${month} == "Novembro"
    Press Keys                   css=select[id="mes"]      N
    ELSE IF    ${month} == "Dezembro"
    Press Keys                    css=select[id="mes"]      D  
    ELSE
         Log To Console   Algo de errado, não está certo
    END

Select Year  
    [Arguments]        ${Year} 
     IF     ${Year} == "2022"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    2
        Press Keys                    css=select[id="ano"]      Backspace

        ELSE IF     ${Year} == "2021"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    1
        Press Keys                    css=select[id="ano"]      Backspace

        ELSE IF     ${Year} == "2023"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    3
        Press Keys                    css=select[id="ano"]      Backspace

        ELSE IF     ${Year} == "2024"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    4
        Press Keys                    css=select[id="ano"]      Backspace
        
        ELSE IF     ${Year} == "2025"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    5
        Press Keys                    css=select[id="ano"]      Backspace

        ELSE IF     ${Year} == "2026"
        Click                         css=select[id="ano"]      
        Press Keys                    css=select[id="ano"]      2     0    2    6
        Press Keys                    css=select[id="ano"]      Backspace

        END      

Remove Movement
    Click                css=#tabelaExtrato > tbody > tr:nth-child(2) > td:nth-child(6) > a

Remove Move already Deleted
    Click                css=a[href="/removerMovimentacao?id=1383304"]
