When('clico no botão') do
  visit '/buscaelementos/botoes'
  find('#teste').click
  sleep(2)

end

Then('verifico se o texto apareceu na tela com sucesso.') do
  #@verificacao = find('#div1')
  #expect(@verificacao.text).to eql 'Você Clicou no Botão!'
  #page.assert_text('Você Clicou no Botão!')
  #page.has_text?('Você Clicou no Botão!')
  have_text('Você Clicou no Botão!')
  sleep(2)
end