
# DemoDay - Projeto Final

<h1 align="center">
    <img src="img/tbbt.png"width="350px">
</h1>

<h4 align="center"> 
    🚧 Projeto em construção  🚧
</h4> 
# Descrição do Projeto
O projeto em desenvolvimento para o Bootcamp do Instituto Atlantico, é utilizado o Robot Framework para automatizar o sistema Seu Barriga.

O sistema seu barriga é um app revolucionário que vai ajudá-lo a manter suas finanças em dia.

## 🔖 Requisitos funcionais

### `RF01`: Criar usuário

##### `CT01`: Deve permitir o cadastro de um novo usuário conforme as características da tabela abaixo:

Severidade: Alta <br>
Manual: [ ]    Automatizado: [X]

##### `CT02`: Realizar o cadastro sem informar o nome

##### `CT03`: Realizar o cadastro sem informar o e-mail

##### `CT04`: Realizar o cadastro sem informar a senha

##### `CT05`: Realizar o cadastro com todos os campos em branco

##### `CT06`: Realizar o cadastro com e-mail inválido

##### `CT07`: Realizar o cadastro com o e-mail já utilizado



| Campos | Descrição                             | Tipo     | Obrigatório |
| ------ | :------------------------------------ | -------- | ----------- |
| Nome   | Nome de usuário                   | texto    | sim         |
| E-mail    | E-mail utilizado para realizar o login                                 | texto  | sim         |
| senha  | Senha de acesso                             | texto    | sim         

### `RF02`: Login
##### `CT01`: Login com o usuário e senha válidos
##### `CT02`:  E-mail não cadastrado
##### `CT03`: Senha incorreta
##### `CT04`: E-mail com o formato incorreto
##### `CT05`: E-mail em branco
##### `CT06`: Senha em branco
##### `CT07`: E-mail e senha em branco
      

### `RF03`: Conta
##### `CT01`: Cadastrar conta
##### `CT02`:  Cadastrar conta com o nome já existente
##### `CT03`: Editar Conta
##### `CT04`: Deletar Conta

### `RF04`: Criar Movimentação
##### `CT01`: Criar uma movimentação de receita paga
##### `CT02`: Criar uma movimentação de receita pendente
##### `CT03`:Criar uma movimentação de despesa paga
##### `CT04`: Criar uma movimentação de despesa pendente
##### `CT05`: Todos os campos são obrigatórios


### `RF05`: Resumo Mensal

##### `CT01`:Listar movimentação mensal
##### `CT02`: Remover movimentação


### `RF06`: Home

##### `CT01`:Consultar saldo
##### `CT02`:  Consultar saldo após inclusão de movimentação de receita
##### `CT03`: Consultar saldo após inclusão de movimentação de despesa
##### `CT04`: Consultar saldo após exclusão de movimentação de receita
##### `CT05`: Consultar saldo após exclusão de movimentação de despesa

### `RF07`: Logoff
##### `CT01`: Sair da aplicação


### RF01 Criar usuário 
#### Descrição da funcionalidade
 A Aplicação de deve permitir a criação de um novo usuário.

 #### CT01 - Realizar o cadastro de usuário 
 Description: Um novo usuário deve ser cadastrado.

 Pre-conditions: Deve ser informado um nome, e-mail e senha válidos.

 Post-conditions: A mensagem "Usuário inserido com sucesso" deve ser exibida.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira o nome <br>
   04 - Insira um e-mail <br>
   05 - Insira a senha <br>
   06 - Click em cadastrar <br>

 ##### CT02 -  Realizar o cadastro sem informar o nome
Description: Não deve permitir o cadastro sem informar o nome

Pre-conditions: Realizar o preenchimentos de todos os campos com excessão do nome.

Post-conditions: A mensagem "Nome é um campo obrigatório" deve ser exibida.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira um e-mail <br>
   04 - Insira a senha <br>
   05 - Click em cadastrar <br>


##### CT03 -  Realizar o cadastro sem informar o e-mail
Description: Não deve permitir o cadastro sem informar o e-mail

Pre-conditions: Realizar o preenchimentos de todos os campos com excessão do e-mail.

Post-conditions: 
A mensagem "Email é um campo obrigatório" deve ser exibida.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira o nome <br>
   04 - Insira a senha <br>
   05 - Click em cadastrar <br>

 ##### CT05 -  Realizar o cadastro sem informar a senha
Description: Não deve permitir o cadastro sem informar a senha

Pre-conditions: Realizar o preenchimentos de todos os campos com excessão da senha.

Post-conditions: A mensagem "Senha é um campo obrigatório" deve ser exibida.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira o nome <br>
   04 - Insira o e-mail<br>
   05 - Click em cadastrar <br>

 ##### CT05 -  Realizar o cadastro com todos os campos em branco
Description: Não deve permitir o cadastro sem informar os campos

Pre-conditions: 

Post-conditions: As mensagens "Nome é um campo obrigatório", "Email é um campo obrigatório" e "Senha é um campo obrigatório" devem ser exibidas
#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Click em cadastrar <br>

 ##### CT06 - Realizar o cadastro com e-mail inválido
 Description: Não deve permitir o cadastro com e-mail no formato inválido.

Pre-conditions: 

Post-conditions: Deve exibir uma mensagem informando que o e-mail é invalido.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira o nome <br>
   04 - Insira um e-mail inválido<br>
   05 - Insira a senha<br>
   06 - Click em cadastrar <br>
##### Input data
jeffmonteiroo.com.br  <br>
@com.br  <br>
www.smartbit.com.br  <br>
admin&smartbit.com  <br>
asjhdasdas12312  <br>
#$ˆ&ˆ%%ˆ&  <br>
espaço em branco  <br>
admin  <br>
 ##### CT07 - Realizar o cadastro com o e-mail já utilizado em outro cadastro
 Description: Não deve permitir o cadastro com e-mail já cadastrado

Pre-conditions: Utilizar um e-mail já cadastrado.
Post-conditions: A mensagem "Endereço de email já utilizado" deve ser exibido

### RF02 login 
#### Descrição da funcionalidade
 Funcionalidade de autenticação do sistema Seu Barriga

 #### CT01 - Realizar o login 
 Description: O usuário deve ser fazer o login.

 Pre-conditions: Deve ser informado as credências válidas.

 Post-conditions: A mensagem "Bem-vindo" deve ser exibida.

#### Steps: 
   01 - Abra o navegador e acesse a página principal do Seu Barriga.<br>
   02 -  Clique na opção "Novo usuário?"<br>
   03 - Insira o nome <br>
   04 - Insira um e-mail <br>
   05 - Insira a senha <br>
   06 - Click em cadastrar <br>

## 🚀 Tecnologias

- [Python](https://www.python.org/downloads/)   - plataforma de desenvolvimento <br>
- [Pip](https://pip.pypa.io/en/stable/)  - gerenciador de pacotes que é instalado junto com o python 
- [Node.js](https://nodejs.org/) - plataforma de desenvolvimento
- [Robot-Framework](https://robotframework.org/robotframework/) - framework de testes automatizados
- [Browser](https://github.com/MarketSquare/robotframework-browser) - Uma moderna biblioteca para o de testes da Web desenvolvida por Playwright . Visando velocidade, confiabilidade e visibilidade.
- [Faker](https://guykisel.github.io/robotframework-faker/) - Uma biblioteca de geração de dados de teste aleatório
- [DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html#library-documentation-top) - Uma biblioteca padrão do Robot Framework que suporta a criação e conversão de valores de data e hora






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




## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feito com 💜 &nbsp;por Fernando Papito 👋 &nbsp;[Meu linkedin](https://www.linkedin.com/in/papitoio/)
#
