class CashRegister
  attr_accessor :last_trans
  attr_reader :discount
  @all_items = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, quan=1)
    @all_items << item
    @price = price * quan
    self.last_trans = @price
    self.total += @price
  end

  def apply_discount
    if @discount > 0
    amount = (@discount.to_f / 100) * self.total
    self.total -= amount
    puts "After the discount, the total comes out to $#{self.total}."
    return @total
  else
    puts "There is no discount to apply."
  end
end

  def items
    @all_items
  end

  def void_last_transaction
    self.total -= self.last_trans
  end






end
