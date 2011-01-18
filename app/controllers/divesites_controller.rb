class DivesitesController < ApplicationController
  # GET /divesites
  # GET /divesites.xml
  def index
    @divesites = Divesite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @divesites }
    end
  end

  # GET /divesites/1
  # GET /divesites/1.xml
  def show
    @divesite = Divesite.find(params[:id])
    @pictures = @divesite.pictures.joins(:details)
    @details = Detail.joins(:pictures).where('pictures.id' => @pictures.map{|p| p.id}).uniq
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @divesite }
    end
  end

  # GET /divesites/new
  # GET /divesites/new.xml
  def new
    @divesite = Divesite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @divesite }
    end
  end

  # GET /divesites/1/edit
  def edit
    @divesite = Divesite.find(params[:id])
  end

  # POST /divesites
  # POST /divesites.xml
  def create
    @divesite = Divesite.new(params[:divesite])

    respond_to do |format|
      if @divesite.save
        format.html { redirect_to(@divesite, :notice => 'Divesite was successfully created.') }
        format.xml  { render :xml => @divesite, :status => :created, :location => @divesite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @divesite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /divesites/1
  # PUT /divesites/1.xml
  def update
    @divesite = Divesite.find(params[:id])

    respond_to do |format|
      if @divesite.update_attributes(params[:divesite])
        format.html { redirect_to(@divesite, :notice => 'Divesite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @divesite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /divesites/1
  # DELETE /divesites/1.xml
  def destroy
    @divesite = Divesite.find(params[:id])
    @divesite.destroy

    respond_to do |format|
      format.html { redirect_to(divesites_url) }
      format.xml  { head :ok }
    end
  end

  def generate_area_list
    @areas = Area.find.all
  end

end
