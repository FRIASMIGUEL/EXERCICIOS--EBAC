# language: pt
Funcionalidade: Tela de cadastro - checkout
Como cliente quero concluir meu cadastro 
Para finalizar minha compraaa

  Contexto: Dado que eu acesse a pagina de checkout do portal EBAC-SHOP

  Esquema do Cenário: cadastro válido
  Quando eu preencher os <campos> obrigatorios
  E clicar no botão finalizar compra
  Então deve exibir a mensagem de "compra finalizada"

  Exemplos: 
  nome   | sobrenome |   pais   |    endereço       |    cidade        |   cep       |  telefone   | endereço de email  |     
 |"joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br  | 
 |"jose" | "abreu"   | "Portugal| "rua 30, apt 302" |     "porto"      | "40009964"  | "092300009" | "jose@EBAC.com.br  |                                      
 |"maria"| "clara"   | "Brasil" | "rua 33, casa 3"  | "rio de janeiro" | "20000064"  | "219999999" | "maria@EBAC.com.br"| 
   
  Cenário: cadastro invalido
  Quando eu deixar de preencher algum <campo> obrigatório
  E clicar no botão finalizar compra
  Então deve exibir a mensagem de "campo obrigatorio não preenchido"
  
  Esquema do Cenário: email invalido
  Quando eu preencher com um <email> invalido
  E  clicar no botão finalizar compra
  Entao deve exibir a mensagem " email invalido"

  Exemplos: 
  | nome | sobrenome  |   pais   |    endereço       |    cidade        |   cep       |  telefone   | endereço de email  |     
  |"joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "john@EAC.com.br"  | 
  |"jose" | "abreu"   | "Portugal| "rua 30, apt 302" |     "porto"      | "40009964"  | "092300009" | "jonas@EBAC.com.br |                                      
  |"maria"| "clara"   | "Brasil" | "rua 33, casa 3"  | "rio de janeiro" | "20000064"  | "219999999" | "mario@EBAC.com.br"|   
      
