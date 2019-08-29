require 'pry'

class CashRegister
 attr_accessor :discount, :total
 
 def initialize(dicount = nil)
   @total = 0
   @discount = discount
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
    self.total -= (self.total.to_f * @discount/100).to_i
    "After the discount, the total comes to $#{@total}."
 else 
    "There is no discount to apply."
  end
 end
 
  def void_last_transaction
    @item.pop 
    @total -= @last_item
  end
end