require 'pry'

class CashRegister
 attr_accessor :total, :discount, :last_transaction
 
 def initialize(discount = nil)
   @discount = discount
   @total = total
   @items = items
 end
 
 def add_item(title, price, quantity = 1)
   @total = (self.total.to_f * discount/ 100).to_i
   
 end
end