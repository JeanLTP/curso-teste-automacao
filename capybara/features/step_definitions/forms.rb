When('eu faço o cadastro') do
    visit '/treinamento/home'
    find('a[class="collapsible-header " ]').click
    sleep(2)
    click_link('Criar Usuários')
    sleep(2)
  end
  
  Then('devo verificar se estou cadastrado') do
    
  end