Given('que eu queira algumas laranjas') do |table|    
    puts @laranja = table.rows_hash['laranja'].to_i
  end
  
  When('eu pegar {int} laranjas') do |v1|  
    @pegar = v1
    @total = @laranja - @pegar
  end
  
  Then('eu devo ficar com algumas laranjas') do
    expect(@total).to eq 8
  end
  
  Given('que eu tenha algumas laranjas') do |table|
    table.hashes.each do |valor|
        @laranjas = valor['laranja'].to_i
        end
    end
  
  When('eu corto {int} laranjas') do |valor2| 
    @cortei = valor2
    @resultado = @laranjas - @cortei
  end
  
  Then('devo ficar com algumas laranjas.') do
    expect(@resultado).to eq 8
  end