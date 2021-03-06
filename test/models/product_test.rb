require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
       @product=build(:product)
  end

  test "product attributes must not be empty" do

      assert_not @product.invalid?
      assert_not @product.errors[:title].any?
      assert_not @product.errors[:description].any?
      assert_not @product.errors[:price].any?
      assert_not @product.errors[:image_url].any?
    end

  test "product price must be positive" do

      @product.price = -1
      assert @product.invalid?
      assert_equal ["must be greater than or equal to 0.01"], @product.errors[:price]
      @product.price = 0
      assert @product.invalid?
      assert_equal ["must be greater than or equal to 0.01"], @product.errors[:price]
      @product.price = 1
      assert @product.valid?
  end

  def new_product(image_url)
      product=build(:product, image_url: image_url)
  end
  test "image url" do
        ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
        bad = %w{ fred.doc fred.gif/more fred.gif.more }
        ok.each do |name|
          assert new_product(name).valid?, "#{name} should be valid"
        end
        bad.each do |name|
          assert new_product(name).invalid?, "#{name} shouldn't be valid"
        end
  end

  test "the title length should be minimum 10 characters" do
       @product.title="Nokia"
       assert_not @product.valid?
       assert_equal ["Must be at least 10 characters long"] , @product.errors[:title]

  end


end
