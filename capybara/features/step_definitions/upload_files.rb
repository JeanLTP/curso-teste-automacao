When('eu faço o upload de arquivo') do
    visit '/outros/uploaddearquivos'
    sleep(1)
    #temos que achar alguma tag que seja do tipo file
    #attach_file('upload', 'C:\Users\ovd9347\Documents\curso-teste-automacao\capybara\foto.jpg', make_visible: true)
    #sleep(2)
    #outra opção para simplificar
    @img = File.join(Dir.pwd, 'features/images/foto.jpg')
    attach_file('upload', @img, make_visible: true)
    sleep(2)
  end