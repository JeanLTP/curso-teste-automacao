@tag_scenario_soma_sub

Feature: Cálculo de soma e subtração

    Scenario: Cálcular a subtração
        Given que tenho 10 laranjas
        When eu como 2 laranjas
        Then restam X laranjas.

    Scenario: Cálcular a soma
        Given que tenho 10 laranjas
        When eu compro 5 laranjas
        Then fico com X laranjas.
