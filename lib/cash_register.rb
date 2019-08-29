class CashRegister	class CashRegister

   attr_accessor :total, :discount
  attr_accessor :discount, :total, :last_item	


   def initialize(discount = nil)	  def initialize(discount = nil)
    @total = 0	    @total = 0 
    @discount = discount	    @discount = discount 
    @items = []	    @items = []
  end	  end


   def add_item(title, price, quantity = 1)	  def add_item(title, price, quantity = 1)
    self.total += price * quantity	    self.total += price * quantity 
    quantity.times do 	    quantity.times do 
      @items << title	      @items << title
    end	    end
    @last_item = price * quantity	    @last_item = price * quantity
  end	  end


   def apply_discount 	  def apply_discount 
        if discount 	    if discount 
    @total -= @total * @discount/ 100	      self.total -= (self.total.to_f * discount/ 100).to_i
      "After the discount, the total comes to $#{@total}."	      "After the discount, the total comes to $#{@total}."
    else 	    else 
      "There is no discount to apply."	      "There is no discount to apply."
@@ -32,9 +31,8 @@ def items
  end	  end


   def void_last_transaction	  def void_last_transaction
    @items.pop	    @items.pop 
    self.total = self.total - @last_item	    self.total -= @last_item
    #binding.pry	
  end	  end


 end 	end 
