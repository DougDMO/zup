class CarrinhoPage < SitePrism::Page

  element :lgpd_accept, '#lgpd-accept'
  element :input_search, '#h_search-input'
  element :button_search, '#h_search-btn'
  element :first_result, '.layout-complete', match: :first
  element :frete, "#freight-field"
  element :busca_frete, "#freight-field-button"
  element :buy, '#btn-buy'
  element :btn_continue, '#btn-continue'
  element :remove, '.basket-productRemoveAct__wrapper', match: :first
  element :inicial, '#h_brand'
  element :h_minicart, '#h_minicart'
  element :ver_carrinho, '.crt-basquet', match: :first

end