class TrailPointsController < ApplicationController
  before_filter :login_required
  before_filter :load_trail
  

  def index
    @trail_points = @trail.trail_points
  end

  def new
    @trail_point = TrailPoint.new
    @trail_point.trail = @trail
  end
  
  def create
    @trail_point = TrailPoint.create!(params[:trail_point].merge(:trail_id => @trail.id))
  end
  
  def destroy
    @trail_point = TrailPoint.find_by_trail_id_and_id(@trail.id, params[:trail_point_id])
    @trail_point.destroy
  end
  
  protected
  
  def load_trail
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:trail_id])
  end
end
