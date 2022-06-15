When('Clico em um botão') do
    visit '/'
    click_on('Começar Automação Web')
    sleep(2)
    visit '/buscaelementos/botoes'
    sleep (2)
    click_button(class:'btn waves-light')
    sleep(2)
    find('a[onclick="ativaedesativa2()"]').click
    sleep (2)
    find('a[onclick="ativaedesativa2()"]').double_click
    sleep (2)
    #find('a[onclick="ativaedesativa2()"]').right_click
    #sleep(5)
    visit '/'
    click_link('Github')
    sleep(2)
  end