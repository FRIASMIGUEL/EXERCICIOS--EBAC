# language: pt
Funcionalidade: configuração de produto
de acordo com tamanho e gosto
e escolher a quantidade

  Contexto: Cliente logado
         e Produto selecionado  

  Esquema do Cenário: finalização da compra
    Quando eu selecionadar <cor>, <tamanho> e <quantidade>
    Então deve exibir uma mensagem de alerta "finalize a compra"

  
  Cenário: Permitir apenas 10 produtos por venda
    Quando eu selecionar uma quantidade > 10
    Então deve exibir uma mensagem de alerta " selecão de quantidade maxima excedida "


  Cenário: Acionar o botão limpar
    Quando eu acionar o botão <limpar>
    Então todas as seleções serâo eliminadas


