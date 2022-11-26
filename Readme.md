
# DemoDay - Projeto Final

<h1 align="center">
    <img src="img/tbbt.png"width="350px">
</h1>


# Descrição do Projeto
O projeto em desenvolvimento para o Bootcamp do Instituto Atlantico, é utilizado o Robot Framework para automatizar o sistema Seu Barriga.

O sistema seu barriga é um app revolucionário que vai ajudá-lo a manter suas finanças em dia.


## Índice 
#### [Requisitos funcionais](#requisitos-funcionais)
#### [Casos de teste](#🔖-casos-de-teste)
#### [Tecnologias](#🚀-tecnologias)
#### [Como executar o projeto](#👨🏻‍💻-como-executar-o-projeto)
#### [Licença](#📝-licença)
#### [Criadores](#👨🏽‍💻-criadores)


## 🔖 Requisitos funcionais

### `RF01`: [Criar usuário](#rf01-criar-usuc3a1rio-1)
#### Descrição da funcionalidade: O sistema deve permitir a a criação de usuário

### `RF02`: [Login](#rf02-login-1)

#### Descrição da funcionalidade: O sistema deve permitir o Login

### `RF03`: [Conta](#rf03-conta-1)

#### Descrição da funcionalidade: O sistema deve permitir listar, criar, alterar e excluir contas

### `RF04`: [Criar Movimentação](#rf04-criar-movimentac3a7c3a3o-1)
#### Descrição da funcionalidade: O sistema deve permitir a a criação de Movimentação por tipo e situação.

### `RF05`: [Resumo Mensal](#rf05-resumo-mensal)
#### Descrição da funcionalidade: O sistema deve listar o resumo mensal

## 🔖 Casos de teste
### RF01: [Criar usuário](#rf01-criar-usuário)
#### `CT01`: Realizar cadastro de usuário
##### Descrição: O usuário deve se cadastrar no sistema.<br>
##### Pre-condições: Deve ser informado as credenciais válidas.<br>
##### Post-conditions: A mensagem "Usuário inserido com sucesso" deve ser exibida.<br>

Severidade: Alta <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Em um navegador, acesse o sistema Seu Barriga.<br>
02 - Clique na opção "Novo usuário?"<br>
03 - Insira o nome<br>
04 - Insira um e-mail<br>
05 - Insira a senha<br>
06 - Click em cadastrar<br>

### RF02: [Login](#rf02-login)
##### `CT02`: Realizar o login de usuário

##### Descrição: O usuário deve fazer o login no sistema.<br>
##### Pre-condições: O usuáiro deve ser informar as credenciais válidas.<br>
##### Post-conditions: A mensagem "Bem-vindo" deve ser exibida.<br>

Severidade: Crítica <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Em um navegador, acesse a opção login no sistema Seu Barriga.<br>
02 - Insira um e-mail<br>
03 - Insira a senha<br>
04 - Click em Entrar<br>

### `RF03`: [Conta](#rf03-conta)
##### `CT03`: Realizar o cadastro de conta 
##### Descrição: O usuário deve se cadastrar uma nova conta.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Contas
       
##### Post-conditions: A mensagem "Conta adicionada com sucesso!" deve ser exibida.<br>

Severidade: Crítica <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Clique em Contas<br>
02 - Clique em Adicionar<br>
03 - Insira o nome da conta<br>
04 - Clique em salvar<br>

##### `CT04`: Realizar o cadastro de conta com o nome já existente

##### Descrição: O sistema não deve permitir o cadastro de uma conta com o nome já existente.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Contas
       
##### Post-conditions: A mensagem "Já existe uma conta com esse nome!" deve ser exibida.<br>

Severidade: Baixa <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Clique em Contas<br>
02 - Clique em Adicionar<br>
03 - Insira o nome da conta<br>
04 - Clique em salvar<br>

##### `CT05`: Editar Conta

##### Descrição: O sistema deve permitir a alteração do nome da conta.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Contas
##### Post-conditions: A mensagem "Conta alterada com sucesso!" deve ser exibida.<br>

Severidade: Importante <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Clique em Contas<br>
02 - Clique em listar<br>
03 - Em ações clique em editar uma conta<br>
04 - Edite o nome da conta<br>
05 - Clique em salvar<br>

##### `CT06`: Deletar Conta

##### Descrição: O sistema deve permitir a exclusão da conta.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Contas
##### Post-conditions: A mensagem "Conta removida com sucesso!" deve ser exibida.<br>

Severidade: Importante <br>
Manual: [ ]    Automatizado: [X]

### Steps:
01 - Clique em Contas<br>
02 - Clique em listar<br>
03 - Em ações clique em remover uma conta<br>

### `RF04`: [Criar Movimentação](#rf04-criar-movimentação)
##### `CT07`: Criar movimentação de receita paga do dia atual
##### Descrição: O sistema deve permitir a criação de uma movimentação de receita paga.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Criar Movimentação.
##### Post-conditions: A mensagem "Movimentação adicionada com sucesso!" deve ser exibida.<br>

Severidade: Moderado <br>
Manual: [ ]    Automatizado: [X]

#### Steps:
01 - Clique em Criar Movimentação<br>
02 - Selecione o Tipo de Movimentação “Receita”<br>
03 - Inserir a data atual em Data da Movimentação<br>
04 - Insira uma Data do Pagamento<br>
05 - Insira uma Descrição<br>
06 - Insira um Interessado<br>
07 - Insira o Valor<br>
08 - Selecione uma das Conta<br>
09 - Em situação marque a opção Paga<br>
10 - Clique em Salvar<br>

##### `CT08`: Criar uma movimentação de receita pendente do dia atual
##### Descrição: O sistema deve permitir a criação de uma movimentação de receita pendente.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Criar Movimentação.
##### Post-conditions: A mensagem "Movimentação adicionada com sucesso!" deve ser exibida.<br>

Severidade: Moderado <br>
Manual: [ ]    Automatizado: [X]

#### Steps:
01 - Clique em Criar Movimentação<br>
02 - Selecione o Tipo de Movimentação “Receita”<br>
03 - Inserir a data atual em Data da Movimentação<br>
04 - Insira uma Data do Pagamento<br>
05 - Insira uma Descrição<br>
06 - Insira um Interessado<br>
07 - Insira o Valor<br>
08 - Selecione uma das Conta<br>
09 - Em situação marque a opção Pendente<br>
10 - Clique em Salvar<br>

##### `CT09`: Criar uma movimentação de despesa paga do dia atual
##### Descrição: O sistema deve permitir a criação de uma movimentação de despesa paga.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Criar Movimentação.
##### Post-conditions: A mensagem "Movimentação adicionada com sucesso!" deve ser exibida.<br>

Severidade: Moderado <br>
Manual: [ ]    Automatizado: [X]

#### Steps:
01 - Clique em Criar Movimentação<br>
02 - Selecione o Tipo de Movimentação “Receita”<br>
03 - Inserir a data atual em Data da Movimentação<br>
04 - Insira uma Data do Pagamento<br>
05 - Insira uma Descrição<br>
06 - Insira um Interessado<br>
07 - Insira o Valor<br>
08 - Selecione uma das Conta<br>
09 - Em situação marque a opção Paga<br>
10 - Clique em Salvar<br>

##### `CT10`: Criar uma movimentação de despesa pendente do dia atual.
##### Descrição: O sistema deve permitir a criação de uma movimentação de despesa pendente.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Criar Movimentação.
##### Post-conditions: A mensagem "Movimentação adicionada com sucesso!" deve ser exibida.<br>

Severidade: Moderado <br>
Manual: [ ]    Automatizado: [X]

#### Steps:
01 - Clique em Criar Movimentação<br>
02 - Selecione o Tipo de Movimentação “Receita”<br>
03 - Inserir a data atual em Data da Movimentação<br>
04 - Insira uma Data do Pagamento<br>
05 - Insira uma Descrição<br>
06 - Insira um Interessado<br>
07 - Insira o Valor<br>
08 - Selecione uma das Conta<br>
09 - Em situação marque a opção Paga<br>
10 - Clique em Salvar<br>



### `RF05`: [Resumo Mensal](#rf05-resumo-mensal)

##### `CT11`: Listar movimentação mensal
##### Descrição: O sistema deve permitir a listar a movimentação mensal.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Resumo Mensal. <br> O período informado deve possuir pelo menos uma movimentação.
##### Post-conditions: A lista de movimentação mensal deve ser exibida.<br>

Severidade: Moderado <br>
Manual: [ ]    Automatizado: [X]

#### Steps:

01 - Clique em Resumo Mensal<br>
02 - Selecione o mês<br>
03 - Selecione o ano<br>
04 - Clique em buscar<br>
##### `CT12`: Remover movimentação

##### Descrição: O sistema deve permitir a listar a movimentação mensal.<br>
##### Pre-condições: O usuário deve estar logado.<br> O usuário deve ter acesso a tela de Resumo Mensal. <br> O período informado deve possuir pelo menos uma movimentação.
##### Post-conditions: A mensagem "Movimentação removida com sucesso!" deve ser exibida.<br>

Severidade: Importante <br>
Manual: [ ]    Automatizado: [X]

#### Steps:

01 - Clique em Resumo Mensal<br>
02 - Selecione o mês<br>
03 - Selecione o ano<br>
04 - Clique em buscar<br>
05 - Em ações, clique no botão remover.<br>

## 🚀 Tecnologias

- [Python](https://www.python.org/downloads/)   - plataforma de desenvolvimento <br>
- [Pip](https://pip.pypa.io/en/stable/)  - gerenciador de pacotes que é instalado junto com o python 
- [Node.js](https://nodejs.org/) - plataforma de desenvolvimento
- [Robot-Framework](https://robotframework.org/robotframework/) - framework de testes automatizados
- [Browser](https://github.com/MarketSquare/robotframework-browser) - Uma moderna biblioteca para o de testes da Web desenvolvida por Playwright . Visando velocidade, confiabilidade e visibilidade.
- [Faker](https://guykisel.github.io/robotframework-faker/) - Uma biblioteca de geração de dados de teste aleatório
- [DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html#library-documentation-top) - Uma biblioteca padrão do Robot Framework que suporta a criação e conversão de valores de data e hora
- [Jsonlibrary](https://github.com/robotframework-thailand/robotframework-jsonlibrary) - É uma biblioteca de teste do Robot Framework para manipular objetos JSON.

## 👨🏻‍💻 Como executar o projeto

[Python](https://www.python.org/downloads/) v 3.10 ou superior para executar. <br>
[Pip] v21 ou superior

Baixe o Python e instale, certifique-se de adicionar Python ao PATH durante a instalação.

Caso já tenha instalado, verifique se a versão esteja de acordo com o solicitado.


Windows e Linux:
```sh
python --version 
```
MacOS
```sh
python3 --version
```

Atualize o Pip e garanta que a versão mais recente seja usada

```sh
pip install -U pip
```


[Node.js] v16 ou superior para executar.

Execute os comandos abaixo para instalar das dependências do projeto e execução dos testes:

```sh
npm i
```

- [Browser] Instale o robotframework-browser a partir da linha de comando:

```sh
pip install robotframework-browser
```

Instale as dependências do node:

```sh
rfbrowser init
```

Caso o rfbrowser não seja encontrado, use:
```sh
python -m Browser.entry init
```

Para instalar a biblioteca Faker, use:
```sh
pip install robotframework-faker
```

Para instalar a biblioteca Jsonlibrary, use:
```sh
pip install -U robotframework-jsonlibrary
```
## 📝 Licença

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
## 👨🏽‍💻  Criadores
Jefferson Monteiro  &nbsp;[Linkedin](https://www.linkedin.com/in/jeffmonteiroo/) <br>
Rafael Santos  &nbsp;[Linkedin](https://www.linkedin.com/in/rafael-santos-933562185/) <br>
Emanuely (Ly) Alves de Sousa  &nbsp;[Linkedin](https://www.linkedin.com/in/emanuely-a-145684105/) <br>
Elias Santos  &nbsp;[Linkedin](https://www.linkedin.com/in/elias-santos-2027821a7/) <br>

