class Trail < ActiveRecord::Base
  def trail_points
    TrailPoint.find_all_by_trail_id(id)
  end
end
