# language: pt

@carrinho @all
  Funcionalidade: Carrinho de compras

    @busca
    Cenário: Valida busca
      Quando Eu insiro o texto "TV SAMSUNG 4k" no campo busca
      E Clico em buscar
      Então Eu vejo "65un7310 4k Uhd Wifi"

    @frete
    Cenário: Valida valor e localidade do frete
      Dado Eu insiro o texto "TV SAMSUNG 4k" no campo busca
      E Clico em buscar
      E Clico no primeiro item da busca
      Quando Eu insiro o CEP "32065050" e busco o frete
      Então Eu vejo "Rua dos Tucanos, Solar do Madeira - Contagem - MG"
      E Eu vejo "R$ 21,99"

    @insere_carrinho
    Cenário: Valida Carrinho e frete final
      Dado Eu busco o item "TV SAMSUNG 4k"
      E Eu insiro o CEP "32065050" e busco o frete
      Quando Eu clico em comprar e continuar
      Então Eu vejo "Smart TV"
      Então Eu vejo "Resumo do pedido"
      E Eu vejo "em até 12x sem juros"
      E Eu vejo "R$ 21,99"

    @remove_carrinho
    Cenário: Valida remoção de item do Carrinho
      Dado Eu busco o item "TV SAMSUNG 4k"
      E Eu insiro o CEP "32065050" e busco o frete
      Quando Eu clico em comprar e continuar
      E Eu clico em remover
      Então Eu vejo "Seu carrinho está vazio"
      E Eu vejo "Voltar para página inicial ou escolha outros produtos."

    @valida_carrinho  @doing
    Cenário: Valida sair e voltar ao Carrinho
      Dado Eu busco o item "TV SAMSUNG 4k"
      E Eu insiro o CEP "32065050" e busco o frete
      Quando Eu clico em comprar e continuar
      E Eu volto a página inicial
      E Eu acesso o carrinho
      Então Eu vejo "Smart TV"
      Então Eu vejo "Resumo do pedido"
      E Eu vejo "em até 12x sem juros"
      E Eu vejo "R$ 21,99"