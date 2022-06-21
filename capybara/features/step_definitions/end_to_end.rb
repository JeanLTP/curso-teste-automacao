When('eu cadastro um usuário') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Jean')
    find('#user_lastname').set ('Lucas')
    fill_in(id: 'user_email', with: 'teste@gmail.com')
    sleep(2)
    find('input[value="Criar"]').click
  end
  
  Then('verifico se o usuário foi cadastrado') do
    txt = find('#notice')
    expect(txt.text).to eql 'Usuário Criado com sucesso'
  end
  
  When('edito um usuário') do
    find('.btn.waves-light.blue').click
    sleep(2)
  end

  Then('verifico se o usuário foi editado') do
    p
  end
  