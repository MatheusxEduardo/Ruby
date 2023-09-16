class Animal
   def pular
      puts 'Toing tóim bóim pulou'
   end

   def dormir
      puts 'ZzZzZ Dormiu'
   end
end

class Cachorro < Animal
   def latir 
      puts 'Au Au Au'
   end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir
   