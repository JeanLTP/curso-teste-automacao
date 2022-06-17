@invisible_elements

Feature: Verificando elementos que não são visiveís na tela

Scenario: Verificar se tem um elemento invisível
When eu clico em um botão
Then verifico se o texto desapareceu da tela
