require_relative "Purchased_Product.rb"

class Shopping_Cart

@@shopping_cart = []

def initialize

end



def add_product (name, base_price, tax_rate)
  product = Product.new(name, base_price, tax_rate)
  @@shopping_cart.push(product)
  puts @@shopping_cart
end

def remove_product (product)
  @@shopping_cart.delete(product)
end


#add up cost of all products in the cart
def cost_before_tax
  sum = 0
  @@shopping_cart.each do |product|
    sum += product.base_price
  end
  puts sum
end

def total_cost_after_tax
  sum = 0
  @@shopping_cart.each do |product|
    item_price = product.total_price
    sum += item_price
  end
  puts sum
end




end


cart = Shopping_Cart.new
cart.add_product("soap", 2, 0.1)
p cart.cost_before_tax
p cart.total_cost_after_tax
