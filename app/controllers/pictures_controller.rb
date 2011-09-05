class PicturesController < ApplicationController
  # GET /pictures
  # GET /pictures.xml

  def index
    @pictures = Picture.order('id DESC').limit(10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.xml
  def show
    @picture = Picture.find(params[:id])
     @pictures = Picture.joins(:details).where('details.id'=> params[:detail_id])
    respond_to do |format|
      format.xml  { render :xml => @picture }
      format.html # show.html.erb
    end
  end

  # GET /pictures/new
  # GET /pictures/new.xml
  def new
    @picture = Picture.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    @picture = Picture.find(params[:id])
    @detail = @picture.details.first
    @details = Detail.scoped
      unless params[:keyword].blank?
       @details = Detail.find(:all, :conditions => ["name like ? ", '%' + params[:keyword] + "%"])
      end

     unless params[:detail_id].blank?
     @detail = Detail.find(params[:detail_id])
     end

     unless params[:divelog_select].nil?
      @divelog = Divelog.find(params[:divelog_select])
     end
  end
  
  # POST /pictures.xml
  def create
    @picture = Picture.create(params[:picture])

    respond_to do |format|
      if @picture.save
      @divelog = Divelog.order('start_date DESC').where('start_date < ? and end_date > ?', @picture.exif.shot_date_time, @picture.exif.shot_date_time).first
      @picture.divelog_id = @divelog.id
      @picture.divesite_id = @divelog.divesite_id
      @picture.update_attributes(:divesite_id)
        format.html { redirect_to(@picture, :notice => 'Picture was successfully created.') }
        format.xml  { render :xml => @picture, :status => :created, :location => @picture }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @picture.errors, :status => :unprocessable_entity }
      end
    end
  end


  # PUT /pictures/1
  # PUT /pictures/1.xml
  def update
    @picture = Picture.find(params[:id])
    @picture.tag_ids = params[:tag_ids]
    @picture.detail_ids = params[:detail_ids]
    unless params[:divesite_id].nil?
    @picture.divesite_id = params[:divesite_id]
    @picture.divelog_id = params[:divelog_id]
    end

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        format.html { redirect_to(@picture, :notice => 'Picture was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @picture.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.xml
  def destroy
    @picture = Picture.find(params[:id])
    @picture.details.delete
    @picture.tags.delete
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to(pictures_url) }
      format.xml  { head :ok }
    end
  end
end
