class ProductsController < InheritedResources::Base
	before_action :set_product_item, only: [:edit, :update, :show, :destroy]



	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def set_product_item
		@product = Product.find(params[:id])
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :price, :image, :main_image)
	end

end
