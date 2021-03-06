require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save product without title" do
		product = Product.new
		assert_not product.save
	end

	test "should not save product without description" do
		product = Product.new
		assert_not product.save
	end

	test "should not save product without price" do
		product = Product.new
		assert_not product.valid?
	end
end
