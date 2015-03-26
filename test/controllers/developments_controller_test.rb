require 'test_helper'

class DevelopmentsControllerTest < ActionController::TestCase
  test "should get new_developments" do
    get :new_developments
    assert_response :success
  end

  test "should get existing_developments" do
    get :existing_developments
    assert_response :success
  end

  test "should get residences" do
    get :residences
    assert_response :success
  end

end
