require "pry"


class CashRegister 

attr_reader 
attr_writer
attr_accessor :discount, :total 


def initialize (discount=0)
@total = 0
@discount = discount 

end

def add_item (title, price, quantity=1)
    self.items(title)
    sum = price * quantity
self.total = @total += sum
end

def apply_discount
    if @discount > 0 
disc = @discount.to_f / 100
sum = @total * disc
@total = self.total - sum
"After the discount, the total comes to $#{@total.to_i}."
    else
        "There is no discount to apply."
    end
end

def items (item)
    @items_arr = []
    @items_arr.push(item)
    @items_arr
    binding.pry
   
    
end

    

end