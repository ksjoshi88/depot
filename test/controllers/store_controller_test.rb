require 'test_helper'

class StoreControllerTest < ActionController::TestCase

  def setup
       @products=create(:product)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Nokia Lumia 530'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
