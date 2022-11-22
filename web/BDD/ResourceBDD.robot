*** Settings ***
Library    Browser

Resource        ${CURDIR}/../resources/base.resource


*** Variables ***
${meses}        Janeiro=1        Fevereiro=2    Março=3
...           Abril=4          Maio=5        Junho=6
...           Julho=7        Agosto=8        Setembro=9
...            Outubro=10    Novembro=11    Dezembro=12

*** Keywords ***
#### DADO
que eu esteja na tela Home
    Home Page   

acesse a tela de resumo mensal
    Go To Monthly Summary    

selecionar o mês anterior
    Select The Previous Month

clicar em buscar
    Click To Search

deve listar o resumo mensal solicitado
   Show monthly summary
   Sleep    5

selecionar o mês seguinte
    Select Next Month

selecione o mês de "${mes}"  
    Select Mouth    "${mes}"

selecione o ano de "${ano}"  
    Select Year   "${ano}"

clico em remover uma movimentação
    Remove Movement

a mensagem ${msg} é exibida
    Verify Alert        ${msg} 

clico em remover uma movimentação já excluída
    Remove Move already Deleted
     
    


