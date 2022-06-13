When('eu multiplico o número {int} por {int}') do |v1, v2|
      @multiplicacao = v1 * v2
    end
    
    Then('o resultado é {int}') do |resultado|
      expect(@multiplicacao).to eq resultado
    end