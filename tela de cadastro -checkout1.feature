# language: pt
Funcionalidade: Tela de cadastro - checkout
Como cliente quero concluir meu cadastro 
Para finalizar minha compraaa

  Contexto: Dado que eu acesse a pagina de checkout do portal EBAC-SHOP

  Esquema do Cenário: cadastro válido
  Quando eu digitar o <nome> "joao", o <sobrenome> "silva", o <pais> "Brasil", o <endereço> "rua 10, casa 20", a <cidade> "rio de janeiro", o <cep> "20000064", o <telefone> "219999999", <endereço de email> "joao@EBAC.com.br" 
  E clicar no botão finalizar compra
  Então deve exibir a mensagem "compra finalizada"

  Esquema do Cenário: cadastro invalido
  Quando eu deixar de digitar digitar o <nome>, o <sobrenome> , o <pais> , o <endereço>, a <cidade> , o <cep>, o <telefone>, o <endereço de email> 
  E clicar no botão finalizar compra 
  Então deve exibir a mensagem "campo obrigatorio não preenchido"

   
  
  Cenario: email invalido
    Quando eu digitar um email invalido
    E eu clicar no botão finalizar compra
    Entao deve exibir a mensagem " emial invalido"

    Exemplos: 
      | nome   | sobrenome | pais     | endereço          | cidade           | cep         | telefone    | endereço de email  | mensagem                                                  |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "compra finalizada"                                       |
      | "    " | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio nome não preenchido"                   |
      | "joao" | "    "    | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio sobrenome não preenchido"              |
      | "joao" | "silva"   | "      " | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio pais não preenchido"                   |
      | "joao" | "silva"   | "Brasil" | "              "  | "rio de janeiro" | "20000064"  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio endereço não preenchido"               |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "              " | "20000064"  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio cidade não preenchido"                 |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "        "  | "219999999" | "joao@EBAC.com.br" | "campo obrigatorio cep não preenchido"                    |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "         " | "joao@EBAC.com.br" | "campo obrigatorio telefone não preenchido"               |
      | "joao" | "silva"   | "Brasil" | "rua 10, casa 20" | "rio de janeiro" | "20000064"  | "219999999" | "                " | "campo obrigatorio email não preenchido"                  |
      | "    " | "     "   | "      " | "              "  | "              " | "         " | "         " | "                " | " preencher campos"                                     " |
