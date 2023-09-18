require_relative 'product'

class Market
  def initialize(product)
    @product = product
  end

  def comprar
    puts "Você comprou o produto #{@product}"
  end
end

# Exemplo de uso:

product = Product.new("Widget", 19.99)
market = Market.new(product)
market.comprar
