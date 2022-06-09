class Training
    attr_accessor :s
    def method_write
        puts 'Digite algo'
        s = gets
        puts s
    end        
end

object_method = Training.new
object_method.method_write



