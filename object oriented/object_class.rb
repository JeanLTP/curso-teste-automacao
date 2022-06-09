#CLASSE E OBJETO

=begin
Classe: é feita por métodos, atributos, parametros e construtor.
Objeto: é uma instância de uma classe.
=end

#Nome da Classe tem que ser sempre com letra maiúscula
class ClassName
    #é a mesma coisa que o get e o seter do java
    attr_accessor :nome
    
    #permite ler
    #attr_reader :nomeum
    
    #permite escrever
    #attr_write :nomedois

    #get
    #def nome
    #    @nome
    #end

    #set
    #def nome=(nome)
    #    @nome = :nome
    #end
    
    #metódo: nome tem que ser todo minúsculo e se for nome composto tem que ter _
    def method
        #corpo do método
        puts 'método'
    end

    def method_2
        #corpo do método
        puts 'método composto'
    end

end

#HERANÇA
#Posso herdar tudo que está nesse método atráves de uma outra classe
#Para isso criamos a classe e usamos o < e nome da classe mãe
class Heranca < ClassName
    
end

objeto = ClassName.new
objeto.nome = 'Teste'
puts objeto.nome

objeto_h = Heranca.new
objeto.nome = 'Teste Herança'
puts objeto.nome

#Chama os métodos
#objeto.method
#objeto.method_2




