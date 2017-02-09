#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction


class CashRegister
  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @last_total = @total
    @total += price * quantity
    @items += [item] * quantity
  end

  def apply_discount
    if @discount > 0
      @total *= (1.00-@discount*0.01)
      "After the discount, the total comes to $#{@total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @last_total
  end


end
