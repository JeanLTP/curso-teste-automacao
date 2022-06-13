Given('que eu tenho {int} laranjas na bolsa') do |v1|
    # Given('que eu tenho {float} laranjas na bolsa') do |float|
      @total = v1
    end
    
    When('eu adiciono {int} laranjas') do |v2|
    # When('eu adiciono {float} laranjas') do |float|
      @soma = v2
      @resultado = @total + @soma
    end
    
    Then('eu verifico se o total de laranjas na bolsa é {int}') do |total|
    # Then('eu verifico se o total de laranjas na bolsa é {float}') do |float|
      expect(@resultado).to eq total
    end
    
    When('eu tiro {int} laranjas') do |v3|
    # When('eu tiro {float} laranjas') do |float|
      @subtracao = v3
      @resultado = @total - @subtracao
    end

    Then('eu verifico com quantas laranjas eu fiquei na bolsa') do
        expect(@resultado).to eq 8
      end