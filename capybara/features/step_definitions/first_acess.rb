When('eu acesso a URL') do
    visit ('https://www.google.com/')    
  end

  #And do
  #  click.on()
  #end
  
  Then('devo ser redirecionado para a pasta correta.') do
    expect(page).to have_current_path('https://www.google.com/', url: true) #comando para efetuar se a página que foi acessada é a página correta
    sleep (5)
  end