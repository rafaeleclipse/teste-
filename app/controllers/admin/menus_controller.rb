class Admin::MenusController < ApplicationController
  def index
    @menus = Menu.find(:all)


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menus }
    end
  end

  # GET /menus/1
  # GET /menus/1.xml
  def show
    @menu = Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/new
  # GET /menus/new.xml
  def new
    @menu = Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menu }
    end
  end

  # GET /menus/1/edit
  def edit
    @menu = Menu.find(params[:id])
  end

  # POST /menus
  # POST /menus.xml
  def create
    @menu = Menu.new(params[:menu])

    respond_to do |format|
      if @menu.save
        flash[:notice] = '<div class="notification success png_bg"><a href="#" class="close"><img src="/images/cross_grey_small.png" title="Fechar aviso" alt="fechar" /></a><div>O MENU foi criado com sucesso!</div></div>'
        format.html { redirect_to('/admin/menus') }
        format.xml  { render :xml => @menu, :status => :created, :location => @menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menus/1
  # PUT /menus/1.xml
  def update
    @menu = Menu.find(params[:id])

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        flash[:notice] = '<div class="notification success png_bg"><a href="#" class="close"><img src="/images/cross_grey_small.png" title="Fechar aviso" alt="fechar" /></a><div>O MENU foi atualizado com sucesso!</div></div>'
        format.html { redirect_to('/admin/menus') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.xml
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    respond_to do |format|
      format.html { redirect_to(admin_menus_url) }
      format.xml  { head :ok }
    end
  end
end
