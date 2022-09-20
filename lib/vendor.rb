require 'pry'
class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.key?(item) == false
     @inventory[item] = 0
    end
    
    @inventory[item]
  end
  def stock(item, amount)
    if @inventory.key?(item) == false
        @inventory[item] = 0
    end
    @inventory[item] += amount
  end
end