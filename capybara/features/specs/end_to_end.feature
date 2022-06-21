#ISSO ERA USADO NAS VERSÕES ANTERIORES, NESSA QUE ESTOU USANDO NÃO PRECISA ADICIONAR AS LINHAS QUE FOI APRESENTADA
#NO CURSO NA AULA 42.

@end_to_end

Feature: Testando end to end
    Alterando o arquivo env.rb e testando end to end
    Scenario: End to End
        When eu cadastro um usuário
        Then verifico se o usuário foi cadastrado
        When edito um usuário
        Then verifico se o usuário foi editado