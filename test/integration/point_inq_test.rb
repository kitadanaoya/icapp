require 'test_helper'

class PointInqTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  #test "authenticated? should return false for a user with nil" do
  #  assert_not @user.authencated?(:remember, '')
  #end
  
  test "invalid making" do
    get mkinq_path
    assert_template 'points/new'
    post mkinq_path, params: { content: "", tokuten: 11 }
    assert_template 'points/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
