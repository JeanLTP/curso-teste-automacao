When('preencho o formulário') do
    @mapeando = Mapping_elements.new
    @mapeando.load
    @mapeando.preencher
    sleep(2)
  end