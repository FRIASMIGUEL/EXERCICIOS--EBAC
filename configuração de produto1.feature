#language: pt

Funcionalidade: configuração de produto
de acordo com tamanho e gosto
e escolher a quantidade

Contexto: Cliente logado
         e Produto selecionado  


Esquema do Cenário: finalização da compra
Dado que seja selecionada <cor>, <tamanho> e <quantidade> 
Então deve exibir uma mensagem de alerta "finalize a compra"


Cenário: Permitir apenas 10 produtos por venda
Dado que seja selecionada uma quantidade > 10
Então deve exibir uma mensagem de alerta " selecão de quantidade maxima excedida "

Cenário: Acionar o botão limpar
Dado que seja acionado o botão limpar
Então todas as seleções serâo eliminadas



 


