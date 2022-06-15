@tag_scenario_scheme
Feature: Cálculo de multiplicação

    Scenario Outline: Fazer multiplicação

        When eu multiplico o número <qtd> por <qtd2>
        Then o resultado é <total>

        Examples:
            | qtd | qtd2 | total |
            | 5   | 2    | 10    |
            | 10  | 5    | 50    |
            | 6   | 5    | 30    |
            | 8   | 8    | 64    |


