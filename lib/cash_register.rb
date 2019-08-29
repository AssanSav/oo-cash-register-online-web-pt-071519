require 'pry'

class CashRegister
 attr_accessor :discount, :total
 
 def initialize(total = 0, discount = nil)
   @total = total
   @discount = 20
   @item = []
 end
 
 def add_item(title, price, quantity = 1)
   @total = price * quantity
   quantity.times do 
     @item << title
   end
   last_item = price * quantity
 end
 
 def apply_discount 
 if discount 
    @total -= @total * 20/100
   puts "After the discount, the total comes to $#{@total}."
 else 
   puts "There is no discount to apply."
  end
 end
 
  def void_last_transaction
    @item.pop 
    @total -= last_item
end