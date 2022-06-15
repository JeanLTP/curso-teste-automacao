@tag_hooks
Feature: Cálculo média geral

    @primeiro @segundo
    Scenario: Calcular a média geral.
        When realizo a média geral
        Then o resultado da média geral é