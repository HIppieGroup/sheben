class Admin::ItemsController < Admin::DashboardController

	before_filter :find_item, only: [:edit, :update, :destroy]

	def index
		@item = Item.all
	end

	def new
		@item = Item.new
	end
	def create
		@item =Item.new(param_item)

		if @item.save
			redirect_to admin_items_path
		else 
			render :new, error: 'Что то пошло не так'
			
		end
	end
	def edit
	end
	def update
		if @item.update(param_item)
			redirect_to admin_items_path
		else
			render :edit, error: 'Что то пошло не так'
		end
	end

	def destroy
		if @item.destroy
			redirect_to admin_items_path
		else
			redirect_to admin_items_path, error: 'Что то пошло не так'
		end
	end

	def param_item
		params[:item].permit(:image, :title, :description, :fraction_one, :fraction_two, :fraction_three, :many, :invis, :sidebar)
	end
	def find_item
		@item = Item.find(params[:id])
	end
end
