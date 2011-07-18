require 'csv'

class DetailsController < ApplicationController


  def csv_import
    if params[:dump][:file].class == StringIO
       @parsed_file =FasterCSV.parse(params[:dump][:file])

    @parsed_file.each do |data|
       field1, field2, field3, field4, field5 = data
       @detail = Detail.new(:name => field1,
                            :englishname => field2,
                            :othername => field3,
	                    :description => field4,
			    :genre_id => field5)
       @detail.save
      end       
     end
   end

  # GET /details
  # GET /details.xml
  def index 
   @details= Detail.scoped
    unless params[:keyword].blank?
     @details = Detail.find(:all, :conditions => ["name like ?", '%' + params[:keyword] + "%"])
    end
    unless params[:genre_id].blank?
      @details = Detail.where('genre_id' => params[:genre_id])
      @genre = Genre.find(params[:genre_id])
    end
<<<<<<< HEAD
    @details = @details.paginate(:page => params[:page] , :per_page => 20)
=======
    @details = @details.paginate(:page => params[:page], :per_page => 20, :order => 'name asc')
>>>>>>> cleanup
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @details }
    end
  end

  # GET /details/1
  # GET /details/1.xml
  def show
    @detail = Detail.find(params[:id])
<<<<<<< HEAD
    @pictures = Picture.joins(:details).where('details.id' => params[:id])
#    @pictures = @pictures.pagenate(:page => params[:page], :per_page => 20)
=======
    @pictures = Picture.joins(:details).where('details.id' => params[:id]).order('id desc')
    @divesites = Divesite.joins(:pictures).where('pictures.id' => @pictures.map{|p| p.id}).uniq
    @tags = Tag.joins(:pictures).where('pictures.id' => @pictures.map{|p| p.id}).uniq
    @count = @pictures.count
    @pictures = @pictures.limit(11)
>>>>>>> cleanup
    unless params[:picture_id].blank?
      @picture_first = Picture.find(params[:picture_id])
    else
      @picture_first = Picture.joins(:details).where('details.id' => params[:id]).last
    end
    unless params[:divesite_id].blank?
      @divesite = Divesite.find(params[:divesite_id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/new
  # GET /details/new.xml
  def new
    @detail = Detail.new
    @csv = params[:csv]    

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/1/edit
  def edit
    @detail = Detail.find(params[:id])
  end

  # POST /details
  # POST /details.xml
  def create
    @detail = Detail.new(params[:detail])

    respond_to do |format|
      if @detail.save
        format.html { redirect_to(@detail, :notice => 'Detail was successfully created.') }
        format.html { redirect_to :action => 'index' }
        format.xml  { render :xml => @detail, :status => :created, :location => @detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /details/1
  # PUT /details/1.xml
  def update
    @detail = Detail.find(params[:id])

    respond_to do |format|
      if @detail.update_attributes(params[:detail])
        format.html { redirect_to(@detail, :notice => 'Detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.xml
  def destroy
    @detail = Detail.find(params[:id])
    @detail.pictures.delete
    @detail.destroy

    respond_to do |format|
      format.html { redirect_to(details_url) }
      format.xml  { head :ok }
    end
  end
end
