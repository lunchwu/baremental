class CodaDrosController < ApplicationController
  # GET /coda_dros
  # GET /coda_dros.xml
  def index
    @coda_dros = CodaDro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coda_dros }
    end
  end

  # GET /coda_dros/1
  # GET /coda_dros/1.xml
  def show
    @coda_dro = CodaDro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coda_dro }
    end
  end

  # GET /coda_dros/new
  # GET /coda_dros/new.xml
  def new
    @coda_dro = CodaDro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coda_dro }
    end
  end

  # GET /coda_dros/1/edit
  def edit
    @coda_dro = CodaDro.find(params[:id])
  end

  # POST /coda_dros
  # POST /coda_dros.xml
  def create
    @coda_dro = CodaDro.new(params[:coda_dro])

    respond_to do |format|
      if @coda_dro.save
        format.html { redirect_to(@coda_dro, :notice => 'Coda dro was successfully created.') }
        format.xml  { render :xml => @coda_dro, :status => :created, :location => @coda_dro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coda_dro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coda_dros/1
  # PUT /coda_dros/1.xml
  def update
    @coda_dro = CodaDro.find(params[:id])

    respond_to do |format|
      if @coda_dro.update_attributes(params[:coda_dro])
        format.html { redirect_to(@coda_dro, :notice => 'Coda dro was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coda_dro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coda_dros/1
  # DELETE /coda_dros/1.xml
  def destroy
    @coda_dro = CodaDro.find(params[:id])
    @coda_dro.destroy

    respond_to do |format|
      format.html { redirect_to(coda_dros_url) }
      format.xml  { head :ok }
    end
  end
end
