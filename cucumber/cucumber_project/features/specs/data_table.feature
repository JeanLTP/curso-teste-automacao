Feature: DataTable
    Scenario: Pegar laranja
        Given que eu queira algumas laranjas
        |laranja| 10|
        When eu pegar 2 laranjas
        Then eu devo ficar com algumas laranjas

    Scenario: Cortar laranja
        Given que eu tenha algumas laranjas
        |laranja|
        |10|
        When eu corto 2 laranjas
        Then devo ficar com algumas laranjas.