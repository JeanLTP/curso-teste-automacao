#MÓDULOS

=begin
    Módulos são uma maneira de agrupar métodos, classes e constantes. Os módulos oferecem dois
    grandes benefícios, fornecem um namespace e evitam confrontos de nomes.
    Também, implementam a facilidade Mixin. É definido um namespace, que nada mais é que uma
    caixa de proteção na qual seus métodos e constantes podem ser reproduzidos sem ter que se
    preocupar em entrar em conflito com outros métodos e constantes.
=end

module Module_name
    #Serve para agrupar classes
    #Serve para agrupar constantes
    #Serve para agrupar métodos
    #É parecido com a classe, porém não pode ser instânciado e módulo não pode ser herdado
    #Podemos incluir os módulos dentro de classes, podemos incluir vários módulos em uma classe
    def method_default
        puts 'teste módulo'
    end
end

class ClassName
    include Module_name
end

object = ClassName.new
object.method_default