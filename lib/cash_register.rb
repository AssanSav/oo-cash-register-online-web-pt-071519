require 'pry'

class CashRegister
 attr_accessor :discount
 
 def initialize(total = 0, discount)
   @total = total
   @discount = discount
 end
end