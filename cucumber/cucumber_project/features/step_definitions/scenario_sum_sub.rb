Given('que tenho {int} laranjas') do |valor1|
        puts valor1
        @v1 = valor1   
    end

    When('eu como {int} laranjas') do |valor2|
        puts valor2
        @v2=valor2
        @resultado = @v1 - @v2    
    end
    
        Then('restam X laranjas.') do
        puts @resultado
        expect(@resultado).to eq 8 
        end

    When('eu compro {int} laranjas') do |valor3|
        puts valor3
        @v3 = valor3
        @resultado_final = @v1 + @v3          
    end
        
        Then('fico com X laranjas.') do
            puts @resultado_final
            expect(@resultado_final).to eq 15
          
        end