@login_precificacao

Feature: Logar no precificação

    Scenario: Logando na plataforma de HML
        Given que eu tenha um cadastro na plataforma
        When eu preencho os campos de '<user>' e também '<psswd>'
        #Then eu tenho que ser direcionado para a home da plataforma


        Examples:
            | user | psswd  |
            | 2741 | 123456 |