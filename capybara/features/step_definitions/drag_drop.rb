Given('que eu estou na tela de drag_drop') do
    visit '/iteracoes/draganddrop'    
  end
  
  When('movo o drag_drop') do
    #@el1 = find('.ui-draggable')
    @el1 = find('#winston')
    @el2 = find('#dropzone')
    @el1.drag_to(@el2)
    sleep(2)
  end