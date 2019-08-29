require 'pry'

class CashRegister
 attr_accessor :discount, :total, :last_item
 
 def initialize(dicount = nil)
   @total = 0
   @discount = 20
   @item = []
 end
 
 def add_item(title, price, quantity = 1)
   @total += price * quantity
   quantity.times do 
     @item << title
   end
   @last_item = price * quantity
 end
 
 def apply_discount 
 if discount 
    self.total -= (self.total.to_f * discount/100).to_i
    "After the discount, the total comes to $#{@total}."
 else 
    "There is no discount to apply."
  end
 end
 
 def items 
   @item
 end
 
  def void_last_transaction
    @item.pop 
    self.total -=  @last_item
  end
end