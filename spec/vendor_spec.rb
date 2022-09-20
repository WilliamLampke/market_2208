require 'vendor'

RSpec.describe Vendor do
  before(:all) do
    @item1 = Item.new({ name: 'Peach', price: '$0.75' })
    @item2 = Item.new({ name: 'Tomato', price: '$0.50' })
    @vendor = Vendor.new('Rocky Mountain Fresh')
  end
  describe '#Vendor' do
    it 'has attributes' do
      expect(@vendor.name).to eq('Rocky Mountain Fresh')
      expect(@vendor.inventory).to eq({})
    end
    it 'can check and add stock' do
      expect(@vendor.check_stock(@item1)).to eq 0
      @vendor.stock(@item1, 30)
      expect(@vendor.inventory).not_to eq({})
      @vendor.stock(@item1, 25)
      expect(@vendor.check_stock(@item1)).to eq 55
      @vendor.stock(@item2, 12)
      expect(@vendor.inventory).not_to eq({})
    end
  end
end
