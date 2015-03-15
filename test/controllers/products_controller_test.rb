#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
require 'test_helper'
class ProductsControllerTest < ActionController::TestCase
  def setup
    ["Samsung tab 3", "Apple iPhone 6", "LG Motospace 4"].each do |s|
      create("handset_#{s}".to_sym)
    end
  end

  test "should show index" do
    get :index
    assert_response :success
    assert_select '#pt',3
  end

  test "should show new page" do
   get :new
   assert_response :success
 end


end