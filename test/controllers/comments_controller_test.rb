require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get comment:text" do
    get :comment:text
    assert_response :success
  end

  test "should get product_id:integer" do
    get :product_id:integer
    assert_response :success
  end

  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

end
