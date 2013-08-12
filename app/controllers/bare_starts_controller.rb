class BareStartsController < ApplicationController
  # GET /bare_starts
  # GET /bare_starts.xml
  def index
    @bare_starts = BareStart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bare_starts }
    end
  end

  # GET /bare_starts/1
  # GET /bare_starts/1.xml
  def show
    @bare_start = BareStart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bare_start }
    end
  end

  # GET /bare_starts/new
  # GET /bare_starts/new.xml
  def new
    @bare_start = BareStart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bare_start }
    end
  end

  # GET /bare_starts/1/edit
  def edit
    @bare_start = BareStart.find(params[:id])
  end

  # POST /bare_starts
  # POST /bare_starts.xml
  def create
    @bare_start = BareStart.new(params[:bare_start])

    respond_to do |format|
      if @bare_start.save
        format.html { redirect_to(@bare_start, :notice => 'Bare start was successfully created.') }
        format.xml  { render :xml => @bare_start, :status => :created, :location => @bare_start }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bare_start.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bare_starts/1
  # PUT /bare_starts/1.xml
  def update
    @bare_start = BareStart.find(params[:id])

    respond_to do |format|
      if @bare_start.update_attributes(params[:bare_start])
        format.html { redirect_to(@bare_start, :notice => 'Bare start was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bare_start.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bare_starts/1
  # DELETE /bare_starts/1.xml
  def destroy
    @bare_start = BareStart.find(params[:id])
    @bare_start.destroy

    respond_to do |format|
      format.html { redirect_to(bare_starts_url) }
      format.xml  { head :ok }
    end
  end
end
