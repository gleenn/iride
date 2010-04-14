class TrailsController < ApplicationController
  before_filter :login_required

  def index
    @trails = Trail.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trail }
    end
  end

  def show
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:id])
    
    respond_to do |format|
      format.html # new.html.erb
      format.js do
        jelly_callback do
          render :text => "moo" #:js => @trail.trail_points
        end
      end
    end
  end

  def new
    @trail = Trail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trail }
    end
  end

  # GET /trails/1/edit
  def edit
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:id])
  end

  def create
    @trail = Trail.new(params[:trail])
    @trail.user_id = current_user.id

    respond_to do |format|
      if @trail.save
        flash[:notice] = 'Trail was successfully created.'
        format.html { redirect_to(@trail) }
        format.xml  { render :xml => @trail, :status => :created, :location => @trail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trail.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:id])

    respond_to do |format|
      if @trail.update_attributes(params[:trail])
        flash[:notice] = 'Trail was successfully updated.'
        format.html { redirect_to(@trail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trail.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @trail = Trail.find_by_user_id_and_id(current_user.id, params[:id])
    @trail.trail_points.each do |tp|
      tp.destroy
    end
    @trail.destroy

    respond_to do |format|
      format.html { redirect_to(trails_url) }
      format.xml  { head :ok }
    end
  end
end

