require 'test_helper'

class PointTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid making" do
    #ログインしているかどうかを確かめる
    get mkinq_path
    assert_template 'point/new'
    post mkinq_path
    assert_template 'point/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
