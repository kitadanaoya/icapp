require 'test_helper'

class ToppagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "Home | ICApp"
  end
  
  test "should get acoount" do
    get account_url
    assert_response :success
    assert_select "title", "Account | ICApp"
  end
  
  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | ICApp"
  end
  
end
