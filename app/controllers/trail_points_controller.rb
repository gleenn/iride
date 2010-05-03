class TrailPointsController < ApplicationController
  before_filter :login_required
  before_filter :load_trail
  

  def index
    @trail_points = @trail.trail_points
  end
  
  def show
    @trail_point = TrailPoint.find(params[:id])
  end

  def new
    respond_to do |format|
      format.html do
        @trail_point = TrailPoint.new
        @trail_point.trail = @trail
      end
      format.js do
        jelly_callback do
          @trail.trail_points.to_json
        end
      end
    end
  end
  
  def create
    @trail_point = TrailPoint.create!(params[:trail_point].merge(:trail_id => @trail.id))
    redirect_to edit_trails_path(@trail)
  end

  def edit
    @trail_point = TrailPoint.find_by_trail_id_and_id(@trail.id, params[:id])
    render :template => :new
  end
  
  def destroy
    respond_to do |format|
      format.html do
        @trail_point = TrailPoint.find_by_trail_id_and_id(@trail.id, params[:id])
        @trail_point.destroy
        redirect_to edit_trails_path(@trail)
      end
      #format.js do
      #  jelly_callback do
      #    
      #  end
    end
  end
  
  protected
  
  def load_trail
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:trail_id])
  end
end

