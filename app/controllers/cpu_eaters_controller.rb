class CpuEatersController < ApplicationController
  # GET /cpu_eaters
  # GET /cpu_eaters.xml
  def index
    @cpu_eaters = CpuEater.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cpu_eaters }
    end
  end

  # GET /cpu_eaters/1
  # GET /cpu_eaters/1.xml
  def show
    @cpu_eater = CpuEater.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cpu_eater }
    end
  end

  # GET /cpu_eaters/new
  # GET /cpu_eaters/new.xml
  def new
    @cpu_eater = CpuEater.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cpu_eater }
    end
  end

  # GET /cpu_eaters/1/edit
  def edit
    @cpu_eater = CpuEater.find(params[:id])
  end

  # POST /cpu_eaters
  # POST /cpu_eaters.xml
  def create
    @cpu_eater = CpuEater.new(params[:cpu_eater])

    respond_to do |format|
      if @cpu_eater.save
        format.html { redirect_to(@cpu_eater, :notice => 'Cpu eater was successfully created.') }
        format.xml  { render :xml => @cpu_eater, :status => :created, :location => @cpu_eater }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cpu_eater.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cpu_eaters/1
  # PUT /cpu_eaters/1.xml
  def update
    @cpu_eater = CpuEater.find(params[:id])

    respond_to do |format|
      if @cpu_eater.update_attributes(params[:cpu_eater])
        format.html { redirect_to(@cpu_eater, :notice => 'Cpu eater was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cpu_eater.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cpu_eaters/1
  # DELETE /cpu_eaters/1.xml
  def destroy
    @cpu_eater = CpuEater.find(params[:id])
    @cpu_eater.destroy

    respond_to do |format|
      format.html { redirect_to(cpu_eaters_url) }
      format.xml  { head :ok }
    end
  end
end
