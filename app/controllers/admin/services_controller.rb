class Admin::ServicesController < Admin::DashboardController

	before_filter :find_service, only: [:edit, :update, :destroy]

	def index
		@service = Service.all
	end
	def new
		@service = Service.new
	end
	def create
		@service = Service.new(param_service)

		if @service.save
			redirect_to admin_services_path
		else
			render :new, error: 'Что то пошло не так'
		end		
	end
	def edit
	end
	def update
		if @service.update(param_service)
			redirect_to admin_services_path
		else
			render :edit, error: 'Что то пошло не так'
		end
	end
	def destroy
		if @service.destroy
			redirect_to admin_services_path
		else
			redirect_to admin_services_path, error: 'Что то пошло не так'
		end
	end

	private
		def param_service
			params[:service].permit(:image, :title, :description, :many, :gorizont)
		end
		def find_service
			@service = Service.find(params[:id])
		end
end