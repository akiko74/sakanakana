class InfosController < ApplicationController
  # GET /infos
  # GET /infos.xml
  def index
    @infos = Info.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @infos }
    end
  end

  # GET /infos/1
  # GET /infos/1.xml
  def show
    @info = Info.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @info }
    end
  end

  # GET /infos/new
  # GET /infos/new.xml
  def new
    @info = Info.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @info }
    end
  end

  # GET /infos/1/edit
  def edit
    @info = Info.find(params[:id])
  end

  # POST /infos
  # POST /infos.xml
  def create
    @info = Info.new(params[:info])

    respond_to do |format|
      if @info.save
        format.html { redirect_to(@info, :notice => 'Info was successfully created.') }
        format.xml  { render :xml => @info, :status => :created, :location => @info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /infos/1
  # PUT /infos/1.xml
  def update
    @info = Info.find(params[:id])

    respond_to do |format|
      if @info.update_attributes(params[:info])
        format.html { redirect_to(@info, :notice => 'Info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.xml
  def destroy
    @info = Info.find(params[:id])
    @info.destroy

    respond_to do |format|
      format.html { redirect_to(infos_url) }
      format.xml  { head :ok }
    end
  end
end
