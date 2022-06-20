When('eu preencho os campos com o iframe') do
    visit '/mudancadefoco/iframe'

    within_frame('id_do_iframe') do #mudamos o foco para o iframe (outra tela)
        #aqui executamos as ações necessárias        
        fill_in(id: 'first_name', with: 'Jean')
        sleep(1)
        fill_in(id: 'last_name', with: 'Lucas')
        sleep(1)
    end
  end
  
  When('entro no modal, verifico o texto') do
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    sleep (2)

    within('#modal1') do #com o within puro temos que passar o # ou . se for class        
        texto = find ('h4')
        expect(texto.text).to eql 'Modal Teste'
        sleep (2)
        #find('a[class="modal-close waves-green btn-flat"]').click
        find('.modal-close').click
        sleep (2)
    end    
  end
  