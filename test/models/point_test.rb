require 'test_helper'

class PointTest < ActiveSupport::TestCase
  # test "the truth" dowebu
  #   assert true
  # end
  def setup
    @point = Point.new(content: "海外が好き", tokuten: 11)
  end
  
  test "should be valid" do
    assert @point.valid?
  end
  
  test "content should be present" do
    @point.content = ""
    assert_not @point.valid?
  end
  
  test "point should be present" do
    @point.tokuten = ""
    assert_not @point.valid?
  end
  
end