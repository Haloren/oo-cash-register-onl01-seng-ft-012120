class CashRegister 
  
  attr_accessor :total, :discount, :items, :price  
  
  def initialize (discount = 0) # constant (optionally takes) discount = 0 
    @total = 0 # sets an instance variable @total on initialization to zero
    @discount = discount # employee discount on initialization
    @items = [] # items being purchased 
  end 

  def total
    @total = 100 # returns the current @total
  end
  
  def add_item(title, price, qty = 1) # accepts a title and a price also accepts optional qty 
    # item = {} # make an item and give it a title, price, qty
    #   item[:title] = title 
    #   item[:price] = price 
    #   item[:qty] = qty 
    # @items << item # each item is shoveled onto the @items 
    # @total += price * qty # doesn't forget about the previous total (total doesn't include the title) 
    @price = price
    @total += price * qty
    if qty > 1 
      count_title = 0
      while count_title < qty 
        @items << title 
        count_title += 1
      end   
    else 
      @items << title 
    end   
  end
  
  def apply_discount
    if @discount == 0 # returns a string error message that there is no discount to apply
      return "There is no discount to apply."
    else
      @total -= @total * (@discount / 100) # applies the discount to the total price and reduces the total  
      return "Discount success message with updated total #{@total}."# returns success message with updated total 
    end   
  end 
  
  def items
    @items = add_item # returns an array containing all items that have been added
  end
  
  def void_last_transaction
  # subtracts the last item from the total
  # returns the total to 0.0 if all items have been removed 
  end
  
end 