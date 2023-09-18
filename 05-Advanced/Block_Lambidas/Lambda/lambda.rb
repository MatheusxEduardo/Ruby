first_lambda = lambda { puts "My first Lambda\n\n" }
first_lambda.call

# Forma abreviada de escrever lambda
second_lambda = -> {puts "My second abreviat lambda\n\n"}
second_lambda.call

# Passando parametros para execulção da lambda
third_lambda = -> (names){ names.each { |name |puts name}}
names = [ "Third Lambda, parametre\n", "João", "Maria", "José\n\n"]
third_lambda.call(names)

# lambdas que ocupam várias linhas
my_lambda = lambda do |numbers|
   index = 0
   puts 'Número atual + Próximo número'
   numbers.each do |number|
     return if numbers[index] == numbers.last
     puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
     puts numbers[index] + numbers[index + 1]
     index += 1
   end
  end
  
  numbers = [1, 2, 3, 4]
  
  my_lambda.call(numbers)