# language: pt
Funcionalidade: Tela de Login
Como cliente quero fazer login na plataforma
Quero me autenticar
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse a página de autenticação do portal EBAC-SHOP

  Cenário: Autenticação Válida
    Quando eu digitar o usuário "jose@ebac.com.br"
    E a senha "senha@abc"
    Então deve exibir uma mensagem de boas vindas "olá Jose !"

  Cenário: Usuário Inexistente
    Quando eu digitar o usuário "xyz@ebac.com.br"
    E a senha "senha@abc"
    Então deve exibir uma mensagem de alerta "usuário inexistente !"

  Cenário: Usuário com senha Inválida
    Quando eu digitar o usuário "jose@ebac.com.br"
    E a senha "ghf@abc"
    Então eve exibir uma mensagem de alerta "usuário ou senha inválidos !"

  Cenário: Autenticar multiplos usuários
    Quando eu digitar o <usuário>
    E e a <senha>
    Então deve exibir a <mensagem> de sucesso

    Exemplos: 
      | usuário             | senha       | mensagem   |
      | "jose@ebac.com.br"  | "senha@abc" | "Olá Jose" |
      | "joaoa@ebac.com.br" | "senha@567" | "Olá Joao" |
      | "cris@ebac.com.br"  | "senha@123" | "Olá Cris  |
