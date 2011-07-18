class DivelogsController < ApplicationController
  # GET /divelogs
  # GET /divelogs.xml
  def index
    @divelogs = Divelog.order('start_date desc').paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @divelogs }
    end
  end

  # GET /divelogs/1
  # GET /divelogs/1.xml
  def show
    @divelog = Divelog.find(params[:id])
    @pictures = Picture.where(:divelog_id => params[:id])
    @details = Detail.joins(:pictures).where('pictures.id' =>@pictures.map{|p| p.id}).uniq
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @divelog }
    end
  end

  # GET /divelogs/new
  # GET /divelogs/new.xml
  def new
    @divelog = Divelog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @divelog }
    end
  end

  # GET /divelogs/1/edit
  def edit
    @divelog = Divelog.find(params[:id])
  end

  # POST /divelogs
  # POST /divelogs.xml
  def create
    @divelog = Divelog.new(params[:divelog])

    respond_to do |format|
      if @divelog.save
        format.html { redirect_to(@divelog, :notice => 'Log was successfully created.') }
        format.xml  { render :xml => @divelog, :status => :created, :location => @divelog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @divelog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /divelogs/1
  # PUT /divelogs/1.xml
  def update
    @divelog = Divelog.find(params[:id])

    respond_to do |format|
      if @divelog.update_attributes(params[:divelog])
        format.html { redirect_to(@divelog, :notice => 'Log was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @divelog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /divelogs/1
  # DELETE /divelogs/1.xml
  def destroy
    @divelog = Divelog.find(params[:id])
    @divelog.destroy

    respond_to do |format|
      format.html { redirect_to(divelogs_url) }
      format.xml  { head :ok }
    end
  end
end
