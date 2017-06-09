# require 'pry'

# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

class CashRegister

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @items = []
end



attr_accessor :discount, :total

def add_item(title, price, quantity = 1)

@price = price
quantity.times do @items << title
end
@total += price * quantity

end

def apply_discount

  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total.to_f * (1 - @discount.to_f/100.0)
    return "After the discount, the total comes to $#{@total}".chomp("0")
  end
end

def items

@items

end

def void_last_transaction

@total -= @price
end

end


 # @total = (@total * 0.8).round(2)
# $total = 0
#
#
# def t(price)
#
#  $total += price
#
# end


# Pry.start
