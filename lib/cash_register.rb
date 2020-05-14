require 'pry'
class CashRegister
attr_accessor :total, :discount, :last_transaction, :items, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
   
  end
   
   
  def add_item(title, price, quantity = 1)
    @total += price * quantity 
    quantity.times do
      @items << title
    end
    @current_total = (price * quantity)
    # @total = @total + current_total 
  end
  
  def apply_discount
    if discount != 0  
      @total = (@total * ((100.0 - @discount.to_f)/100.0)).to_i
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items 
  end
  
  def void_last_transaction
    @total = @total.to_f - @current_total.to_f
  end
end
