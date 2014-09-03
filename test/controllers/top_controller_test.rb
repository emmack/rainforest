require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test "should get likes_id:integer" do
    get :likes_id:integer
    assert_response :success
  end

  test "should get product_id:integer" do
    get :product_id:integer
    assert_response :success
  end

end
