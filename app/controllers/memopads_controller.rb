class MemopadsController < ApplicationController
  # GET /memopads
  # GET /memopads.xml
  def index
    @memopads = Memopad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @memopads }
    end
  end

  # GET /memopads/1
  # GET /memopads/1.xml
  def show
    @memopad = Memopad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @memopad }
    end
  end

  # GET /memopads/new
  # GET /memopads/new.xml
  def new
    @memopad = Memopad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @memopad }
    end
  end

  # GET /memopads/1/edit
  def edit
    @memopad = Memopad.find(params[:id])
  end

  # POST /memopads
  # POST /memopads.xml
  def create
    @memopad = Memopad.new(params[:memopad])

    respond_to do |format|
      if @memopad.save
        flash[:notice] = 'Memopad was successfully created.'
        format.html { redirect_to(@memopad) }
        format.xml  { render :xml => @memopad, :status => :created, :location => @memopad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @memopad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /memopads/1
  # PUT /memopads/1.xml
  def update
    @memopad = Memopad.find(params[:id])

    respond_to do |format|
      if @memopad.update_attributes(params[:memopad])
        flash[:notice] = 'Memopad was successfully updated.'
        format.html { redirect_to(@memopad) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @memopad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /memopads/1
  # DELETE /memopads/1.xml
  def destroy
    @memopad = Memopad.find(params[:id])
    @memopad.destroy

    respond_to do |format|
      format.html { redirect_to(memopads_url) }
      format.xml  { head :ok }
    end
  end
end
