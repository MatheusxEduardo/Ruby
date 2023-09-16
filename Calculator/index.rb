require 'bigdecimal'

def soma(x, y)
  x + y
end

def subtracao(x, y)
  x - y
end

def multiplicacao(x, y)
  x * y
end

def divisao(x, y)
  if y == 0
    "Divisão por zero não é permitida."
  else
    x / y
  end
end

numeros = []

loop do
  puts "Selecione a operação:"
  puts "1. Adicionar número"
  puts "2. Realizar cálculo"
  puts "3. Sair"

  escolha = gets.chomp.to_i

  case escolha
  when 1
    if numeros.length < 50
      print "Digite um número: "
      numero = BigDecimal(gets.chomp)
      numeros << numero
    else
      puts "Limite de 50 números atingido."
    end
  when 2
    if numeros.empty?
      puts "Nenhum número para calcular."
    else
      puts "Números inseridos: #{numeros.join(', ')}"
      print "Digite a operação (e.g., +, -, *, /): "
      operacao = gets.chomp

      begin
        resultado = numeros.reduce { |acc, num| acc.send(operacao, num) }
        puts "Resultado: #{resultado}"
        numeros = [resultado] # Atualiza a lista com o resultado
      rescue ZeroDivisionError
        puts "Erro: Divisão por zero."
      rescue StandardError
        puts "Operação inválida."
      end
    end
  when 3
    puts "Calculadora encerrada."
    break
  else
    puts "Opção inválida. Tente novamente."
  end
end
