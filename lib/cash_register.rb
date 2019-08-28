require 'pry'

class CashRegister
 attr_accessor :discount, :total
 
 def initialize(total = 0, discount = nil)
   @total = total
   @discount = 20
 end
 
 def add_item(title, price, total, quantity = 1)
   
 end
end