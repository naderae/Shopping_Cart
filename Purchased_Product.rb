


class Product


def initialize(name, base_price, tax_rate)
  @name = name
  @base_price = base_price
  @tax_rate = tax_rate
end

def base_price
  return @base_price
end

def total_price
  return @base_price * (1 + @tax_rate)
end


end
