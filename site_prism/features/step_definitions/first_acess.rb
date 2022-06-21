When('acesso a url') do
    @home = Home.new
    @home.load
    sleep(2)
  end
  
  Then('verifico se estou na página inicial') do
    #para verificar se a URL está correta usamos o comando abaixo
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
  end