class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
        return 0
    else
      @inventory[item]
    end
  end

  def stock(item, stock)
    if @inventory.include?(item)
      @inventory[item] = @inventory[item] + stock
    else
      @inventory[item] = stock
    end
  end

  def potential_revenue
    @inventory.sum do |item|
      require 'pry'; binding.pry
      item[1] * 
    end
  end
end
