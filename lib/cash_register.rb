class CashRegister
  
  attr_accessor :total, :discount, :items
  attr_reader :last_transaction, :last_qty
    def initialize(discount = 0)
      @total = 0 
      @discount = discount
      @items = []
    end
    
    # def add_item(title, price, qty = 1)
    #   @total += price * qty
    #   qty.times { @items << title }
    #   @last_transaction = [title, price, qty]
    # end
    
    def apply_discount
      @total == 0? "There is no discount to apply." : "After the discount, the total comes to $#{@total = @total * 80/100}."
    end 
    
    
    def void_last_transaction
      total -= @last_transaction
    end
    
    def add_item(title, price, qty=1)
      if qty > 1 
        i = 0
        while i < qty 
          items << title
      
          i += 1
        end   
      else 
        items << title
      end
      self.total += price * qty
      @last_transaction = price * qty
      #@last_qty = qty
    end

end