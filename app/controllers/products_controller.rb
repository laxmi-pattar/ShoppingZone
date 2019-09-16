class ProductsController < InheritedResources::Base
	layout "product"

  private

    def product_params
      params.require(:product).permit(:title, :description, :price)
    end

end
