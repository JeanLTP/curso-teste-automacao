When('eu marco um checkbox e um radiobox') do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    sleep (2)
    #find('label[for="grey"]').click
    #sleep (2)
    check('purple', allow_label_click: true)
    find('label[for="yellow"]').click
    sleep (2)
    uncheck('purple', allow_label_click: true) #desmarca a opção
    sleep(2)
    choose('red', allow_label_click: true)
    sleep(2)
  end