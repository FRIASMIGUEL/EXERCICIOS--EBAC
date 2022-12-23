# language: pt
Funcionalidade: Tela de Login
Como cliente quero fazer login na plataforma
Quero me autenticar
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse a página de autenticação do portal EBAC-SHOP

  Esquema do Cenário: Autenticação Válida
  Quando eu digitar o <usuário> e <senha>
  Então deve exibir uma <mensagem> de boas vindas

  Exemplos: 
  |      usuário        |    senha    | mensagem    |
  | "jose@ebac.com.br"  | "senha@abc" | "Olá Jose"  |
  | "joao@ebac.com.br"  | "senha@def" | "Olá Joao"  |
  | "maria@ebac.com.br" | "senha@ghi" | "Olá Maria" |

  Esquema do Cenário: Usuário Inexistente ou senha invalida
    Quando eu digitar um <usuario> inexistente  e ou <senha> invalida
    Então deve exibir uma <mensagem> de alerta

    Exemplos: 
      |       usuário         |   senha     |            mensagem                    |
      | "antonio@ebac.com.br" | "senha@abc" | "usuario inexixtente ou senha invalida"|
      | "jorge@ebac.com.br"   | "senha@def" | "usuario inexixtente ou senha invalida"|
      | "maria@ebac.com.br"   | "senha@gbb" | "usuario inexixtente ou senha invalida"|