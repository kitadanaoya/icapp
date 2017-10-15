module ApplicationHelper
  def sum_for(user)
      points = Point.find(user.point_ids)  #POINTmodel一覧
  a = points.map(&:tokuten)
  value = a.map(&:to_i).inject(:+)
      case value
      when 0..5
        render 'shared/15'
      when 6..18
        render 'shared/618'
      when 19..60
        render 'shared/1930'
      end
  end
  
  
end
