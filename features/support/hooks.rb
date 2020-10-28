Before do
  visit 'https://www.submarino.com.br/'
  find("#lgpd-accept").click
  Capybara.page.driver.browser.manage.window.maximize
end