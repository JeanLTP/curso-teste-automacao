@first_acess

Feature: Acessar a primeira URL

    Scenario: Acessar a URL padrão com sucesso

        When eu acesso a URL
        #And clico no botão de pesquisar
        Then devo ser redirecionado para a pasta correta.