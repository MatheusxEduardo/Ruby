sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum

puts '--------------------------------------------'
# Em blocos que ocupam várias linhas, faça uso do do..end
foo = {2 => 3, 4 => 5} #Hash que sera enviado para a funçao each

foo.each do |key, value|
   puts "key = #{key}"
   puts "value = #{value}"
   puts "key * value = #{key * value}"
   puts '---'
end

puts '--------------------------------------------'
# Um bloco pode ser passado como  argumento implícito de um método
def foo    #call the block
   yield   # yield execulta o bloc passado como parametro 
   yield
end

foo {puts "Exec the block"} # Boclk passado como parametro
puts '---------------------------------------------'

# E se o bloco for opcional? 
def foo
   if block_given? #block_given? se o bloco foi dado ele execulta
     # Call the block
     yield
   else
     puts "Sem parâmetro do tipo bloco"
   end
  end
  
  foo
  foo { puts "Com parâmetro do tipo bloco"}
  