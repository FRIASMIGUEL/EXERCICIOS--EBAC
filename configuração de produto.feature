#language: pt

Funcionalidade: configuração de produto
de acordo com tamanho e gosto
e escolher a quantidade

Contexto: Cliente logado
         e Produto selecionado  



Cenário: Seleção de cor
Dado que seja selecionada uma cor 
Então deve exibir uma mensagem de alerta "selecione agora o tamanho"

Cenário: Seleção do tamanho
Dado que seja selecionado um tamanho 
Então deve exibir uma mensagem de alerta "selecione agora a quantidade"

Cenário: Seleção da quantidade
Dado que seja selecionada uma quantidade
Então deve exibir uma mensagem de alerta "finalize a compra"



Cenário: Permitir apenas 10 produtos por venda
Dado que seja selecionada uma quantidade > 10
Então deve exibir uma mensagem de alerta " Cselecão de quantidade maxima excedida "

Cenário: Acionar o botão limpar
Dado que seja acionado o botão limpar
Então todas as seleções serâo eliminadas



 


