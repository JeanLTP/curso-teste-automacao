When('eu utilizo um script') do
    visit '/outros/scroll'
    page.execute_script('window.scrollBy(0,1500)')
    sleep(2)
        @result = page.evaluate_script('4+4'); #exemplo passando um script para retornar o valor no terminal
        puts @result
  end