Arquitetura

cucumber-projects : pasta raiz do projeto
specs : pasta onde fica os arquivos feature
steps definition : pasta onde são executados os testes
support : pasta onde fica as configurações
env : arquivo de configuração padrão
gemfile : onde instalamos as gem's que precisaremos para usar no projeto

gem install cucumber : comando para instalação do cucumber
gem install rspec : comando para instalar o rspec
cucumber --init : cria um modelo de projeto cucumber
cucumber --retry 2 : especificar o número de vezes para repetir os testes com falha
cucumber --order random : defini que os cenários sejam executados de forma aleatória:
cucumber --verbose : mostra todos os arquivos carregados durante a execução do teste. Desta forma é possível verificar quais arquivos
estão sendo executados no momento deste teste. Abaixo segue um exemplo dos arquivos carregados ao executar
um cenário da feature de login.


CRIANDO UM PROJETO COM Cucumber

cucumber --init
create   features
create   features/step_definitions
create   features/support
create   features/support/env.rb


Após isso na pasta do projeto criar o arquivo gemfile e passar quais programas serão instalados
Em seguida, no arquivo env.rb na pasta support passar o required cucumber

Feature:
Pode ter apenas uma funcionalidade, e descreve uma regra da funcionalidade.
Além disso, pode ter vários cenários daquela funcionalidade e ser escrito em qualquer linguagem

Os cenários Cucumber consistem em  3 etapas
Given
When
Then

Esquema de cenários: Permite rodar vários cenários com a mesma funcionalidade que mudam apenas o valor.
Um esquema de cenário é formado por uma tabela e <>(parâmetros delimitados)
Fornece um modelo que nunca é executado diretamente. É executado uma vez para cada linha na seção de exemplos
que estão registrados embaixo dela (ignorando a primeira linha que é o cabeçalho).

EX:
Esquema do cenário (Scenarios Outlines): comer
Given que eu tenho <qtd> de pepinos
When eu como <qtd2> pepinos
Then sobram <total> pepinos

Examples:
|qtd|qtd2|total|
|12|5|7|
|20|5|15|

Contexto:

Permite a você adicionar algum contexto a todos os cenários em um único recurso. Um contexto e como um cenário
sem título, que contém uma série de etapas. A diferença ococrre quando ele é executado. O contexto será executado
ANTES de cada um de seus cenários.

EX: 
Contexto: Dado que eu tenho 10 laranjas
Scenarios: Comprar laranja
When eu compro duas laranjas
Then eu verifico se o total de laranjas é 12

É útil para por exemplo funcionalidades que você precisa efetuar o login, criando um contexto fica mais fácil.


Data table - tabelas

São etapas de argumentos úteis para a especificação de um grande conjunto de dados (normalmente como entrada
para uma saída de dado ou como espera de um então)

Não confunda tabelas com esqueda do cenário - sintaticamente eles são idênticos mas eles tem propósito diferentes.
Esquemas declaram diferentes valrores múltiplos ao mesmo cenário, enquanto tabelas são usadas para esperar um
conjunto de dados.

EX: 
Cenário: Datatable com coluna:

|NOME| EMAIL| FONE|
|ASLAK| ASLAK@EMAIL.COM| 1234|
|JOE| JOE@EMAIL.COM| 5642|

Cenário: Datatable com linha:

|NOME| ASLAK            | JOE         |
|EMAIL| ASLAK@EMAIL.COM |JOE@EMAIL.COM|
|FONE| 1234             | 5642        |

TAGS

São utilizadas para otimizar e organizar os cenários, ou para rodar apenas um cenário.

EX:
@Example1
Feature:
Scenarios:.....


Feature:
@Example2
Scenarios:.....

Um cenário ou uma funcionalidade podem ter várias TAGS

Para chamar as tags :
Cucumber -o -t @nome da tag
ou
cucumber -t "@nome da tag"

HOOKS

Permite executar blocos em vários pontos no ciclo de teste do cucumber.

comando after no hooks: serão executados após a última etapa de cada cenário, mesmo quando houver etapas com falha,
indefinida, pendente ou ignorada. Eles serão executados na ordem iversa da qual estão registrados.

comando before: serão executados antes do primeiro passo de cada cenário. Eles serão executados na mesma ordem em que 
estão registrados.

A diferença entre Contexto (background) e Hooks é que o contexto roda antes de cada cenário dentro da funcionalidade
que ele está. O hooks roda antes ou depois do projeto inteiro.

Before e After global

Hooks com tags:

Isso é possível atráves da associação com o before, after, around ou afterstep hooks com uma ou mais tags.

EX de hooks em hook_test.feature / rb e na pasta support hooks.rb

Aqui voce pode usar o after e o before colocando uma tag neles














