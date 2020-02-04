# require 'pry'


# class CashRegister
  
#   attr_accessor :total, :discount, :items
#   attr_reader :last_transaction, :last_qty
#     def initialize(discount = 0)
#       @total = 0 
#       @discount = discount
#       @items = []
#     end
    
#     # def add_item(title, price, qty = 1)
#     #   @total += price * qty
#     #   qty.times { @items << title }
#     #   @last_transaction = [title, price, qty]
#     # end
    
#     def apply_discount
#       @total == 0? "There is no discount to apply." : "After the discount, the total comes to $#{@total = @total * 80/100}."
#     end 
    
#     def total=(num)
#       @total = num.round(2)  
#     end
#     require 'pry'
#     def void_last_transaction
      
#       #binding.pry
#       self.total -= @last_transaction
#       @last_qty.times{self.items.pop}
#     end
    
#     def add_item(title, price, qty=1)
     
      
#       qty.times{items << title}  
#       self.total += price * qty
#       @last_transaction = price * qty
    
#       @last_qty = qty
#     end

# end

class CashRegister
  attr_accessor :total
  attr_reader :discount
  
  def initialize(discount=0)
    @total = 0  
    @discount = discount
  end
  
  def add_item(title, price, qty=0)
    qty.times do
    self.total += price
  end
  end
end