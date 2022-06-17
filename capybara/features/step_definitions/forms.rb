When('eu faço o cadastro') do
    visit '/treinamento/home'
    find('a[class="collapsible-header " ]').click
    sleep(2)
    click_link('Criar Usuários')
    sleep(2)
    #abaixo são os 3 modos que podemos preencher formulários
    fill_in(id: "user_name", with: 'Jean Lucas')
    sleep(2)
    find('#user_lastname').set('Thierbach Panicio')
    sleep(2)
    find('#user_email').send_keys('jeanzer44@gmail.com')
    sleep(2)
    find('input[name="commit"]').click
    sleep(2)    
  end
  
  Then('devo verificar se estou cadastrado') do
    verificacao = find('#notice')
    expect(verificacao.text).to eq 'Usuário Criado com sucesso'
  end