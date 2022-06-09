#POLIMORFISMO

=begin
Polimorfismo é a capacidade de um objeto poder ser referenciado de várias formas (cuidado
polimorfismo não quer dizer que o objeto fica se transfmorando/alterando, muito pelo contrário
um objeto nasce de um tipo e morre daquele tipo, o que pode mudar é a maneira como nós
referimos ele
=end

class Cachorro
    def latir
        puts 'latido'
    end
end

class Cachorro2
    def latir
        puts 'latido2'
    end
end

class Pessoa
    def agarra_cachorro(c)
        c.latir
    end
end

c1 = Cachorro.new
c2 = Cachorro2.new

p = Pessoa.new

p.agarra_cachorro(c1)
p.agarra_cachorro(c2)