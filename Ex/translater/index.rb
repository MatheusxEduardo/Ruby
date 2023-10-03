require 'google/cloud/translate'

class Tradutor
  def initialize(texto, idioma_origem, idioma_destino)
    @texto = texto
    @idioma_origem = idioma_origem
    @idioma_destino = idioma_destino
    @tradutor = Google::Cloud::Translate.new(version: :v2)
  end

  def traduzir
    resultado = @tradutor.translate @texto, from: @idioma_origem, to: @idioma_destino
    resultado.text
  end

  def salvar_em_arquivo
    data_hora = DateTime.now.strftime("%d-%m-%y_%H:%M")
    File.open("#{data_hora}.txt", 'w') do |file|
      file.puts "Texto original: #{@texto}"
      file.puts "Texto traduzido: #{traduzir}"
    end
  end
end

puts "Digite o texto que deseja traduzir:"
texto = gets.chomp
puts "Digite o idioma do texto:"
idioma_origem = gets.chomp
puts "Digite o idioma para o qual deseja traduzir o texto:"
idioma_destino = gets.chomp

tradutor = Tradutor.new(texto, idioma_origem, idioma_destino)
tradutor.salvar_em_arquivo

puts "Texto traduzido salvo em arquivo!"

