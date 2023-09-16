opc = ""
dados = []


puts 'CALCULADORA:'
puts "\nQual operação deseja realizar:"
option = gets.chomp

case option
when 'soma'
   puts "\nCalculadora de soma + "
   while opc.downcase != "sair"
      puts ":"
      dados = gets.chomp
   end
   

when 'multiplicação' 
   puts "\nCalculadora de multiplicação x"
when 'subtraçào'
   puts "\nCalculadora de subtração - "
when 'divisão'
   puts "\nCalculadora de divisão "
else
   puts 'Erro... não foi possivel identificar os dados'
end 
