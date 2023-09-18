require_relative 'product'
require_relative 'market'

# Cria uma instância da classe Product com nome e preço
product = Product.new("Widget", 19.99)

# Cria uma instância da classe Aaket passando a instância de Product como atributo
maket = Market.new(product)

# Cria uma instância da classe Market passando a instância de Aaket como atributo
market = Market.new(market)

# Executa o método comprar da instância de Market
market.comprar
