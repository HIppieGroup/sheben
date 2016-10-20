class Admin::PagesController < Admin::DashboardController

  def show
  	@page =Page.all
  end
  def new
  	@page = Page.new
  end
  def create
  	@page = Page.new(param_page)
  	if @page.save
  			redirect_to admin_path 
  	else
  		render :new, error: 'Что то пошло не так'
  	end
  end
  def edit
  end
  def update
    @page = Page.first
  	if @page.update(param_page)
  		redirect_to admin_path
  	else
  		render :edit, error: 'Что то пошло не так'
  	end
  end
  private
  	def param_page
		  params[:page].permit(:title, :phone, :email, :description, :image, :about_title, :about_description, :info_title, :info_description);
	 end
end
