class RidersController < ApplicationController
  before_filter :login_required

  # GET /riders
  # GET /riders.xml
  def index
    @riders = Rider.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @riders }
    end
  end

  # GET /riders/1
  # GET /riders/1.xml
  def show
    @rider = Rider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rider }
    end
  end

  # GET /riders/new
  # GET /riders/new.xml
  def new
    @rider = Rider.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rider }
    end
  end

  # GET /riders/1/edit
  def edit
    @rider = Rider.find(params[:id])
  end

  # POST /riders
  # POST /riders.xml
  def create
    @rider = Rider.new(params[:rider])

    respond_to do |format|
      if @rider.save
        flash[:notice] = 'Rider was successfully created.'
        format.html { redirect_to(@rider) }
        format.xml  { render :xml => @rider, :status => :created, :location => @rider }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /riders/1
  # PUT /riders/1.xml
  def update
    @rider = Rider.find(params[:id])

    respond_to do |format|
      if @rider.update_attributes(params[:rider])
        flash[:notice] = 'Rider was successfully updated.'
        format.html { redirect_to(@rider) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rider.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /riders/1
  # DELETE /riders/1.xml
  def destroy
    @rider = Rider.find(params[:id])
    @rider.destroy

    respond_to do |format|
      format.html { redirect_to(riders_url) }
      format.xml  { head :ok }
    end
  end
end
