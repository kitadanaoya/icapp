module ApplicationHelper
  def sum_for(user)
      points = Point.find(user.point_ids)  #POINTmodel一覧
  a = points.map(&:tokuten)
  value = a.map(&:to_i).inject(:+)
      case value
      when 0..12
        render 'shared/15'
      when 13..45
        render 'shared/618'
      when 46..150
        render 'shared/1930'
      end
  end
  
  
end
