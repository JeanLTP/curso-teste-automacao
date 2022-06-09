#ESTRUTURA DE CONDICIONAIS

#CONDIÇÃO ELSE ELSIF
=begin

If, elsif else
if (condição 1)
    instrução
else
    instrução 2
end
=end

puts 'digite 1 ou 2'
v1 = gets.to_i

=begin
if v1 == 1
    puts 'valor igual a 1'
elsif v1 == 2
    puts 'valor igual a 2'
else
    puts 'digite um valor válido'
end
=end


#CONDIÇÃO UNLESS
=begin
Condição unless - executa o código se a condicional for falso.
Se a condicional for verdadeira, o código especificado na cláusula else será executado

unless (condição)
    instrução 1
else
    instrução 2
end

ex:
unless v1 == 1
    puts 'falso'
else
    puts 'verdadeiro'
end
=end

#CONDIÇÃO CASE E WHEN
=begin
Case when - Inicia uma definição de instrução de caso. 
Leva a variável com a qual você vai trabalhar.

case v1
when 0
    puts 'voce digitou 0'
when 1
    puts 'voce digitou 1'
when 2
    puts 'voce digitou 2'
else
    puts 'voce não digitou um número válido'
end
    


