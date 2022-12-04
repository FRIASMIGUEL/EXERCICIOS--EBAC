# language: pt
Funcionalidade: Tela de cadastro - checkout
Como cliente quero concluir meu cadastro 
Para finalizar minha compraaa

  Contexto: Dado que eu acesse a pagina de checkout do portal EBAC-SHOP

  Cenário: cadastro válido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "compra finalizada"

  Cenário: cadastro invalido
    Quando eu digitar o sobrenome "silva"
    E o pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem " campo obrigatorio nome não preenchido"

  Cenário: cadastro invalido
    Quando eu digitar o nome "joao"
    E o pais "Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem " campo obrigatorio sobrenome não preenchido"

  Cenário: cadastro invalido
    Quando eu digita o nome "joao"
    E o sobrenome "silva"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio pais não preenchido"

  Cenário: cadastro inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio endereço não preenchido"

  Cenário: cadastro inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio cidade não preenchido"

  Cenário: cadastro inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o telefone "219999999"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio cep não preenchido"

  Cenário: cadastro inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o endereço de email "joao@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio telefone não preenchido"

  Cenário: cadastro inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo obrigatorio email não preenchido"

  Cenário: cadastro email inválido
    Quando eu digitar o nome "joao"
    E o sobrenome "silva"
    E pais"Brasil"
    E o endereço "rua 10, casa 20
    E a cidade "rio de janeiro"
    E o cep "20000064"
    E o telefone "219999999"
    E o endereço de email "carlos@EBAC.com.br"
    E clicar no botão finalizar compra
    Então deve exibir a mensagem "campo email invalido"

  Cenario: cadastro invalido
    Quando eu clicar no botão finalizar compra
    Entao deve exibir a mensagem " preencher campos"

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
