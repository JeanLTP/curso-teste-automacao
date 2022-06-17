When('eu clico em um botão') do
    visit '/buscaelementos/botoes'
    find('#teste').click
    sleep(2)  
  end
  
  Then('verifico se o texto desapareceu da tela') do
    #@verificacao = find('#div1')
    #expect(@verificacao.text).to eql 'Você Clicou no Botão!'
    #page.assert_text('Você Clicou no Botão!')
    #page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
    sleep(2)
    find('#teste').click
    assert_no_text('Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
    sleep (1)
  end