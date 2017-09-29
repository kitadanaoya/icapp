require 'test_helper'

class PointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get points_path
    assert_response :success
  end

  test "should get show" do
    get points_path
    assert_response :success
  end

  test "should get new" do
    get mkinq_path
    assert_response :success
  end

  test "should get create" do
    get mkinq_path
    assert_response :success
  end

end
