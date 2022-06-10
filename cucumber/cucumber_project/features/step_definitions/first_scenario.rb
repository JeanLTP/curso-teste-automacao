When('eu somo {int} somo {int}') do |v1, v2|
        @soma = v1 + v2
    end
    
    Then('o resultado tem que ser {int}') do |resultado|
        expect(@soma).to eq resultado
        puts @soma
        puts resultado        
    end