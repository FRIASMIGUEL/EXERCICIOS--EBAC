# language: pt
Funcionalidade: Tela de Login
Como cliente quero fazer login na plataforma
Quero me autenticar
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse a página de autenticação do portal EBAC-SHOP

  Esquema do Cenário: Autenticação Válida
    Quando eu digitar o <usuário> e <senha>
        Então deve exibir uma mensagem de boas vindas "olá Jose !"

Exemplo: 
      |     usuário         | senha       | mensagem   |
      | "jose@ebac.com.br"  | "senha@abc" | "Olá Jose" |
      


  Esquema do Cenário: Usuário Inexistente
    Quando eu digitar o usuário <usuario> e <senha>
    Então deve exibir uma mensagem de alerta "usuário inexistente !"

Exemplo: 
      | usuário             | senha       |   mensagem            |
      |"joao@ebac.com.br"   | "senha@567" | "usuário inexistente" |

  

  Esquema do Cenário: Usuário com senha Inválida
  Quando eu digitar o <usuário> e <senha>
  Então deve exibir uma mensagem de alerta "usuário ou senha inválidos !"

Exemplo: 
      |usuário              | senha       |        mensagem              |
      | "jose@ebac.com.br"  | "ghf@abc    | "usuario ou senha invalidos" |



  