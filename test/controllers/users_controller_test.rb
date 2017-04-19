require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get users_new_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

end
