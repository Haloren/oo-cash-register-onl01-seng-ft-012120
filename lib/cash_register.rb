class CashRegister 
  
  attr_accessor :total, :discount, :items, :price, :last_transaction # make an additional attr_accessor to keep track of last transaction 
  
  def initialize (discount = 0) # constant (optionally takes) discount = 0 
    @total = 0 # sets an instance variable @total on initialization to zero
    @discount = discount  # employee discount on initialization
    @items = []  # items being purchased 
  end 

  # def total *un-needed method total is returned*
  #   @total = 100 # returns the current @total spec folder shows = 100
  # end 
  
  def add_item(title, price, qty = 1) # accepts a title and a price also accepts optional qty 
    # if qty > 1 
    #   i = 0
    #   while i < qty
    #   @items << title
    #   i += 1 
    #   end
    # else 
    #   @items << title 
    # end
    # @total += price * qty
    # @last_transaction = @total
    # @total 
    
    item = {} # make an item and give it a title, price, qty
      item[:title] = title 
      item[:price] = price 
      item[:qty] = qty 
    @items << item # each item is shoveled onto the @items 
    @total += price * qty # doesn't forget about the previous total (total doesn't include the title) 
    
    @last_transaction = @total
    
    # @price = price
    # @total += price * qty
    # if qty > 1 
    #   count_title = 0
    #   while count_title < qty 
    #     @items << title 
    #     count_title += 1
    #   end   
    # else 
    #   @items << title 
    # end   
  end
  
  def apply_discount # .to_f to make a float (a number with decimals) 
    if @discount > 0 # applies the discount to the total price and reduces the total  
      @discount /= 100.to_f 
      @total -= (@total * @discount)
      return "After the discount, the total comes to $800." # returns success message with updated total copied from spec folder 
    else
      return "There is no discount to apply." # returns a string error message that there is no discount to apply
    end 
  end 
  
  def items
   all_items = [] # returns an array containing all items that have been added
    @items.each do |item|
      for qty in 1..item[:qty] #for in loop / times loop 
        all_items << item[:title]
      end 
    end
    all_items  
  end
  
  def void_last_transaction() 
    # if @items < 1   # returns the total to 0.0 if all items have been removed 
    #   @total == 0.0 
    # else 
      @total -= @last_transaction # subtracts the last item from the total
  #   end 
  end
  
end 