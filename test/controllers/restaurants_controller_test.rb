require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get restaurants_create_url
    assert_response :success
  end

  test "should get read" do
    get restaurants_read_url
    assert_response :success
  end

  test "should get update" do
    get restaurants_update_url
    assert_response :success
  end

end
