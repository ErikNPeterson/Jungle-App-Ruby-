require 'rails_helper'

# RSpec.describe ProductSpec, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"

RSpec.describe Product, type: :model do
  describe 'Validations' do
    category = Category.create(name: 'product')
    it 'with all 4 fields will save successfully' do
      product = category.products.create!(name: 'booty shorts', price: 6, quantity: 0)
      expect(product).to be_a Product
    end
    it 'should have a valid name' do
      product = category.products.create(name: '', price: 6, quantity: 0)
      expect(product.errors.full_messages).to include("Name can't be blank")
    end
    it 'should have a valid price' do
      product = category.products.create(name: 'booty shorts', price: nil, quantity: 0)
      expect(product.errors.full_messages).to include("Price is not a number")
    end
    it 'should have a valid quantity' do
      product = category.products.create(name: 'booty shorts', price: 15, quantity: nil)
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end
    it 'should have a category' do
      product = Product.create(name: 'booty shorts', price: 15, quantity: 20, category: nil)
      expect(product.errors.full_messages).to include("Category can't be blank")
    end

  end

end