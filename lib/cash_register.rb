require 'pry'

class CashRegister
  attr_accessor :total, :discount
    def initialize(discount = nil)
 @total = 0
   #@cash_register_with_discount = cash_register_with_discount
   @discount = discount
      end
  
  def total
   @total
   end 
   
   
   def add_item(title, price, quantity = nil)
     
     @title = title 
     @price = price 
 
     #binding.pry
         if quantity
            price *= quantity
            @total += price
         else 
             @total += price
    end 
   end 
   
   def apply_discount 
        if @discount == nil
         p "There is no discount to apply."
       else 
     result = total * discount / 100
      @total -= result
      p "After the discount, the total comes to $800."
       end
    end
    
    def items 
    all = []
    all << @title 
      
      #binding.pry
    end 
end
