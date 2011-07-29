class PickupsController < ApplicationController
  # GET /pickups
  # GET /pickups.xml
  def index
    @pickups = Pickup.order('created_at DESC')
    @pickups = @pickups.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pickups }
    end
  end

  # GET /pickups/1
  # GET /pickups/1.xml
  def show
    @pickups = Pickup.order('created_at DESC')
    @pickups = @pickups.paginate(:page => params[:page], :per_page => 20)
    @pickup = Pickup.find(params[:id])
    @picture_first = Picture.find(@pickup.picture.to_i)
    @detail = @picture_first.details.last
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pickup }
    end
  end

  # GET /pickups/new
  # GET /pickups/new.xml
  def new
    @pickup = Pickup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pickup }
    end
  end

  # GET /pickups/1/edit
  def edit
    @pickup = Pickup.find(params[:id])
  end

  # POST /pickups
  # POST /pickups.xml
  def create
    @pickup = Pickup.new(params[:pickup])

    respond_to do |format|
      if @pickup.save
        format.html { redirect_to(@pickup, :notice => 'Pickup was successfully created.') }
        format.xml  { render :xml => @pickup, :status => :created, :location => @pickup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pickup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pickups/1
  # PUT /pickups/1.xml
  def update
    @pickup = Pickup.find(params[:id])

    respond_to do |format|
      if @pickup.update_attributes(params[:pickup])
        format.html { redirect_to(@pickup, :notice => 'Pickup was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pickup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pickups/1
  # DELETE /pickups/1.xml
  def destroy
    @pickup = Pickup.find(params[:id])
    @pickup.destroy

    respond_to do |format|
      format.html { redirect_to(pickups_url) }
      format.xml  { head :ok }
    end
  end
end
