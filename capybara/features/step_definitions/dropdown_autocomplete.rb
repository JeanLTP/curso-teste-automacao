When('interajo com o dropdown e select') do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    sleep(2)
    select 'Chrome', from: 'dropdown'
    find('option[value="2"]').select_option #esta maneira também é possível selecionar
    sleep(2)   
  end
  
  When('utilizo o Preencher') do
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Paraná'
    find('ul' , text: 'Paraná').click
    sleep(2)
  end
  