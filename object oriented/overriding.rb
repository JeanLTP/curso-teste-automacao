#OVERRINDING

=begin
Na programação orientada a objeto, é um recurso que permite uma subclasse forneça uma
implementação específica de um método que já é fornecido por uma de suas superclasses.
A implementação na subclasse Substitui a implementação na superclasse.
=end

class ClasseMae
    def correr
        puts 'A mãe corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        puts 'A filha corre'
    end
end

object = ClasseFilha.new

#Como eu subscrevi o método correr ele vai retornar o que foi definido na classe filha
object.correr