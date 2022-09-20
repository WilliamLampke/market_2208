require 'pry'
class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor_name)
    @vendors << vendor_name
  end

  def vendor_names
    names = []
    @vendors.each do |name|
      names << name.name
    end
    names
  end

  def vendors_that_sell(item)
    that_sell = []
    @vendors.each do |name|
      that_sell << name if name.inventory.key?(item) == true
    end
    that_sell
  end

  def overstocked_items
    @vendors.each do |name|
      binding.pry
      name.inventory
    end
  end
end
