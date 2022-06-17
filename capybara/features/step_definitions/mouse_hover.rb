When('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    sleep (1)
    find('.activator').hover
    #find('.activator').hover.click
    sleep (2)
  end