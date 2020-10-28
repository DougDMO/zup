carrinhopage = CarrinhoPage.new

Dado("Eu aceito os termos LGDP") do
  carrinhopage.lgpd_accept.click
end

Quando("Eu insiro o texto {string} no campo busca") do |string|
  carrinhopage.input_search.set string
end

Quando("Clico no primeiro item da busca") do
  carrinhopage.first_result.click
  sleep 3
end

E("Clico em buscar") do
  carrinhopage.button_search.click
  sleep 5
end

Quando("Eu busco o item {string}") do |string|
  carrinhopage.input_search.set string
  carrinhopage.button_search.click
  sleep 5
  carrinhopage.first_result.click
  sleep 3
end

Quando("Eu insiro o CEP {string} e busco o frete") do |string|
  carrinhopage.frete.set string
  sleep 2
  carrinhopage.busca_frete.click
  sleep 2
end

Quando("Eu clico em comprar e continuar") do
  carrinhopage.buy.click
  sleep 2
  carrinhopage.btn_continue.click
  sleep 3
end

Então("Eu vejo {string}") do |string|
  expect(page).to have_content(string)
end

When("Eu clico em remover") do
  carrinhopage.remove.click
end

When("Eu volto a página inicial") do
  carrinhopage.inicial.click
  sleep 3
end

When("Eu acesso o carrinho") do
  carrinhopage.h_minicart.click
  carrinhopage.ver_carrinho.click
  sleep 2
end