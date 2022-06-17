Given('que eu tenha um cadastro na plataforma') do
    visit 'http://orahml.ovd.net:7077/auth/login?redir=http:%2F%2Forahml.ovd.net:7077%2Fprecos%2Fapp'
  end
  
  When('eu preencho os campos de {string} e também {string}') do |user, psswd|
    fill_in(name: "usuario", with: user).click
    fill_in(name: "senha", with: psswd).click
    sleep(3)
    first('span[class="mat-button-wrapper" ]').click  #assim funcionou
    sleep(2)
  end