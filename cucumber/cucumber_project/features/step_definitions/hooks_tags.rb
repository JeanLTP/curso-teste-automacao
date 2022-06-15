When('realizo a média geral') do
    @media = @soma / 2
  end
  
  Then('o resultado da média geral é') do
    expect(@media).to eq 5
  end