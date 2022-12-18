# language: pt
Funcionalidade: Tela de cadastro - checkout
Como cliente quero concluir meu cadastro 
Para finalizar minha compraaa

  Contexto: Dado que eu acesse a pagina de checkout do portal EBAC-SHOP

  Esquema do Cenário: cadastro válido
    Quando eu digitar o <nome>, <sobrenome>, <pais>, <endereço>, <cidade>, <cep>, <telefone> e <endereço de email>
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "compra finalizada"

  Exemplo: 
      |  nome  | sobrenome |   pais   |     endereço      |     cidade       |     cep     |   telefone  | endereço de email  |     mensagem       |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "compra finalizada"|                                      

  Esquema do Cenário: cadastro invalido

    Quando eu deixar de digitar digitar o <nome>, <sobrenome> , <pais> ,  <endereço>, <cidade> , <cep>, <telefone> e <endereço de email>
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio não preenchido"

      

  Cenario: email invalido
    Quando eu digitar um email invalido
    E  clicar no botão finalizar compra
    Entao deve exibir a mensagem " email invalido"

  Exemplo: 
      | nome   | sobrenome |   pais   |    endereço       |    cidade        |   cep       |  telefone   | endereço de email  |   mensagem       |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBA.com.br"  | "email invalido" |
      
