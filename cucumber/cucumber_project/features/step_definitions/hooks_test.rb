#HOOKS

When('realizo a média') do
    @media = @soma / 2
  end
  
  Then('o resultado da média é') do
    expect(@media).to eq 5
  end