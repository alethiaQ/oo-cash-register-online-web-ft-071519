class CashRegister
  attr_accessor :last_trans, :total
  attr_reader :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    self.items = []
  end



  def add_item(item, price, quan=1)
    @price = price * quan
    self.last_trans = @price
    self.total += @price
    quan.times do
      items << item
    end

  end

  def apply_discount
    if @discount > 0
    amount = (@discount.to_f / 100) * self.total
    self.total -= amount
    return "After the discount, the total comes to $#{@total.to_i}."

  else
    return "There is no discount to apply."
  end
end

  def items
    @items
  end

  def items=(list_items)
    @items = list_items
  end 

  def void_last_transaction
    self.total -= self.last_trans
  end






end
