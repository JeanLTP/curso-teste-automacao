When('Eu somo {int} mais {int}') do |v1, v2|
      @soma = v1 + v2
    end
    
    Then('o resultado deve ser {int}') do |resultado|
        expect(@soma).to eq resultado
    end