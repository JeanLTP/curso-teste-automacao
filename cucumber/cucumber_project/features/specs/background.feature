Feature: Trabalhar com contexto.

Background:
Given que eu tenho 10 laranjas na bolsa

Scenario: Adiciono duas laranjas
When eu adiciono 2 laranjas
Then eu verifico se o total de laranjas na bolsa é 12

Scenario: Retirar uma quantidade de laranjas.
When eu tiro 2 laranjas
Then eu verifico com quantas laranjas eu fiquei na bolsa