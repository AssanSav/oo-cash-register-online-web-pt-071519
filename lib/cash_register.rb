require 'pry'

class CashRegister
 attr_accessor :discount, :total
 
 def initialize(total = 0, discount = nil)
   @total = total
   @discount = 20
 end
 
 def add_item(title, price, quantity = 1)
   @total = price * quantity
 end
 
 def apply_discount 
   if discount 
   @total = @total * 0,2
  end
 end
end