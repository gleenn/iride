module TrailsHelper
  def trail_points_with_delete_links(trail)
    trail.trail_points.map do |tp|
      delete_link = link_to "x", trail_trail_point_path(trail, tp), :method => :delete
      "(#{tp.lat}, #{tp.long})#{delete_link}"
    end.join(" ")
  end
end

