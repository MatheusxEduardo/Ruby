class Person 

   def initialize(name, age)
      @name = name
      @age = age
   end

   def check
      puts "Instancia da classe iniciada com o valores:"
      puts "Name = #{@name}"
      puts "Idade = #{@age}"
   end
end

person = Person.new('João', 12)
person.check