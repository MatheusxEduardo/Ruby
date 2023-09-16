puts 'Digite o número do mês en você nasceu: '

month = gets.chomp.to_i

case month 
when 1..3
   puts 'Você nasceu no começo do ano'
when 9..12
   puts 'Você nasceu no final do ano'
when 4..6
   puts 'Você nasceu no primeiro semestre'
when 7..9
   puts 'Você nasceu no segundo semestre'
else
   puts 'Erro... não foi possivel identificar os dados'
end 