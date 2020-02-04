class CashRegister
  
  attr_accessor :total, :discount, :item
  attr_reader :last_transaction
    def initialize(discount = 0)
      @total = 0 
      @discount = discount
      @items = []
    end
    
    def add_item(title, price, qty = 1)
      @total += price * qty
      qty.times { @items << title }
      @last_transaction = [title, price, qty]
    end
    
    def apply_discount
      @total == 0? "There is no discount to apply." : "After the discount, the total comes to $#{@total = @total * 80/100}."
    end 
    
    def items
      @items 
    end 
    
    def void_last_transaction
      @total -= @last_transaction[1] * @last_transaction[2]
      @last_transaction[2].times do
        @items.delete_at(@items.index(@last_transaction[0]) || @items.count)
      end   
    end
    
    def add_item(title, price, qty)
      if qty > 1 
        i = 0
        while i < qty 
          items << title
      
          i += 1
        end   
      else 
        items << title
      end
      total += price * qty
      @last_transaction = price * qty
      @last_qty = qty
    end

end

total = 0
title = "apple"
items = []
price = 2
qty = 3
def add_item(title, price, qty)
  if qty > 1 
    i = 0
    while i < qty 
      items << title
  
      i += 1
    end   
  else 
    items << title
  end
  total += price * qty
  last_amount_added = price * qty
  last_qty = qty
end

