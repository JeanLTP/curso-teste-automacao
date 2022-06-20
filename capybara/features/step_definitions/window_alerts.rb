When('eu acesso uma janela verifico a mensagem') do
    visit '/mudancadefoco/janela'

    #window recebe janela que foi aberta
    window = window_opened_by do
        find('a[class="btn waves-light red"]').click
        sleep(2)
    end

    #muda de foco para a janela
    within_window window do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @verificacao = find('.red-text.text-darken-1.center')
        sleep(2)
        expect(@verificacao.text).to eq 'Você Abriu uma nova janela!!'
        window.close
        sleep(2)
    end
    
    #SEGUNDA OPÇÃO
        find('a[class="btn waves-light red"]').click
        sleep(2)
        switch_to_window windows.last 

        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @verificacao = find('.red-text.text-darken-1.center')
        sleep(2)
        expect(@verificacao.text).to eq 'Você Abriu uma nova janela!!'
        windows.last.close
        sleep(2)

  end
  
  When('eu entro no alert, verifico e faço a ação') do
      visit '/mudancadefoco/alert'
      find('button[onclick="jsAlert()"]').click
      sleep(2)
      page.accept_alert #aceita o alerta que abre na tela
      sleep(1)

      find('button[onclick="jsConfirm()"]').click
      sleep(2)
      page.dismiss_confirm #rejeita o alert na tela
      sleep(2)
      
      find('button[onclick="jsPrompt()"]').click
      sleep(2)
      page.accept_prompt(with: 'Testando') #aceita o prompt e digita com o with o que for preciso
      sleep(1)

      find('button[onclick="jsPrompt()"]').click
      sleep(2)
      page.dismiss_prompt #rejeita o prompt e digita com o with o que for preciso
      sleep(1)
  end