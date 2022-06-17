When('acesso a url') do
    visit ('/buscaelementos/botoes')
  end
  Then('verifico se encontrei os elementos de botões') do
    #busca todos os elementos que contenham:
    page.all(:css, '.btn')
    sleep(5)
    find_by_id('teste')
    sleep (5)
  end