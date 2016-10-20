class ShowsController < ActionController::Base
	layout "application"
	protect_from_forgery with: :exception
  def index
  	@page = Page.first
  	@item = Item.where(invis: true, sidebar: false)
  	@sidebar = Item.where(invis: true, sidebar: true)
  	@service_g = Service.where(gorizont: true)
  	@service_v = Service.where(gorizont: false)
  end
end
