#OPERADORES LÓGICOS

=begin
&& equivale a E
|| equivale a OU
! equivale a NEGAÇÃO
=end

v1 = 1
v2 = 2
v3 = 3
v4 = 4

=begin
if(v1 < v2) && (v3 < v4)
    puts 'Condição atendida pelos dois casos'
else
    puts 'Condição falsa'
end
=end 

=begin
if(v1 < v2) || (v3 < v4)
    puts 'Condição atendida'
else
    puts 'Condição falsa'
end
=end

=begin
if !(v3 < v4)
    puts 'Negação atendida'
else
    puts 'Negação não atendida'
end
retorna 'Negação não atendida'
=end
